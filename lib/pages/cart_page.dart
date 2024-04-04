import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food4u/components/my_button.dart';
import 'package:food4u/components/my_cart_tile.dart';
import 'package:food4u/models/restaurants.dart';
import 'package:food4u/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text(
                                  "Are you sure you want to clear the cart"),
                              actions: [
                                //Cancel Button
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text("Cancel")),

                                //Yes Button
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      restaurant.clearCart();
                                    },
                                    child: Text("Confirm"))
                              ],
                            ));
                  },
                  icon: Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(
                                child: Text(
                            "Cart is Empty",
                            style: TextStyle(fontSize: 22),
                          )))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  final cartItem = userCart[index];
                                  return MyCartTile(cartItem: cartItem);
                                }),
                          )
                  ],
                ),
              ),
              MyButton(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentPage())),
                  text: "CheckOut"),
              SizedBox(
                height: 30,
              )
            ],
          ),
        );
      },
    );
  }
}
