import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food4u/components/my_quantity_selector.dart';
import 'package:food4u/models/cart_item.dart';
import 'package:food4u/models/restaurants.dart';
import 'package:provider/provider.dart';

//import './my_quantity_selector.dart';
class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //food image
                        Padding(padding: EdgeInsets.all(12)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            height: 100,
                            width: 100,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        //name adn price
                        Column(
                          children: [
                            Text(cartItem.food.name),
                            Text(
                              "\$" + cartItem.food.price.toString(),
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                          ],
                        ),

                        const Spacer(),
                        //increment and decrement
                        QuantitySelector(
                            food: cartItem.food,
                            quantity: cartItem.quantity,
                            onDecrement: () {
                              restaurant.removeFromCart(cartItem);
                            },
                            onIncrement: () {
                              restaurant.addToCart(
                                  cartItem.food, cartItem.selectedAddOns);
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: cartItem.selectedAddOns.isEmpty ? 0 : 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                      children: cartItem.selectedAddOns
                          .map((addon) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      Text(addon.name),
                                      Text('(\$ ${addon.price})'),
                                    ],
                                  ),
                                  shape: StadiumBorder(
                                      side: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)),
                                  onSelected: (value) {},
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  labelStyle: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary,
                                      fontSize: 12),
                                ),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ));
  }
}
