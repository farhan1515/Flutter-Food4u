//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food4u/components/my_app_bar.dart';
import 'package:food4u/components/my_current_location.dart';
import 'package:food4u/components/my_description_box.dart';
import 'package:food4u/components/my_drawer.dart';
import 'package:food4u/components/my_food_tile.dart';
import 'package:food4u/components/my_tab_bar.dart';
import 'package:food4u/models/food.dart';
import 'package:food4u/models/restaurants.dart';
import 'package:food4u/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: foodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(foodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> FullMenu) {
    return foodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, FullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodPage(food: food))),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MyAppBar(
                  title: MyTabBar(tabController: _tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      // LOCATION
                      MyCurrentLocation(),

                      //Delivery
                      MyDescriptionBox()
                    ],
                  ),
                ), // title: Text("Home"))
              ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(restaurant.menu)),
          )),
    );
  }
}
