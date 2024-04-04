import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food4u/components/my_button.dart';
import 'package:food4u/models/food.dart';
import 'package:food4u/models/restaurants.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddOns = {};

  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddOns[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedAddOns) {
    // close the food page
    Navigator.pop(context);
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddOns[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //scaffold
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.food.imagePath,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.food.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "\$" + widget.food.price.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    Text(
                      widget.food.description,
                      style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    Divider(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "AddOns",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8)),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          Addon addon = widget.food.availableAddons[index];
                          return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$' + addon.price.toString(),
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ),
                              value: widget.selectedAddOns[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddOns[addon] = value!;
                                });
                              });
                        },
                      ),
                    )
                  ],
                ),
              ),
              MyButton(
                  onTap: () => addToCart(widget.food, widget.selectedAddOns),
                  text: "Add to cart"),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),

      //back button

      SafeArea(
        child: Opacity(
          opacity: 0.5,
          child: Container(
            margin: EdgeInsets.only(left: 22),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle),
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios_new_rounded)),
          ),
        ),
      )
    ]);
  }
}
