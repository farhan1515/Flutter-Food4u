import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food details
                    Text(food.name),
                    Text(
                      '\$' + food.price.toString(),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      food.description,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    )
                  ],
                )),
                // food image

                SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imagePath,
                    height: 120,
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          indent: 25,
          endIndent: 25,
        )
      ],
    );
  }
}
