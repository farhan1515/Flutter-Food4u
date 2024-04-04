import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food4u/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu=[
    //BURGERS DATA
  Food(
    name:"Clasic cheeseBurger",
    description: "  A juicy chiken patty with melted cheddar,lettuce,tomato,and a hint of onion and pickle",
    imagePath: "lib/images/burgers/b1.jpg",
    price: 0.89,
    category: foodCategory.burgers,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Clasic cheeseBurger",
    description: "  A juicy chiken patty with melted cheddar,lettuce,tomato,and a hint of onion and pickle",
    imagePath: "lib/images/burgers/b2.jpg",
    price: 0.89,
    category: foodCategory.burgers,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Clasic cheeseBurger",
    description: "  A juicy chiken patty with melted cheddar,lettuce,tomato,and a hint of onion and pickle",
    imagePath: "lib/images/burgers/b3.jpg",
    price: 0.89,
    category: foodCategory.burgers,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Clasic cheeseBurger",
    description: "  A juicy chiken patty with melted cheddar,lettuce,tomato,and a hint of onion and pickle",
    imagePath: "lib/images/burgers/b4.jpg",
    price: 0.89,
    category: foodCategory.burgers,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Clasic cheeseBurger",
    description: "  A juicy chiken patty with melted cheddar,lettuce,tomato,and a hint of onion and pickle",
    imagePath: "lib/images/burgers/b5.jpg",
    price: 0.89,
    category: foodCategory.burgers,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),
  
  //DESERTS DATA

  Food(
    name:"Sweet desert",
    description: "  A sweet cake  patty with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/desserts/d1.jpg",
    price: 0.89,
    category: foodCategory.deserts,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

   Food(
    name:"Sweet desert",
    description: "  A sweet cake  patty with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/desserts/d2.jpg",
    price: 0.89,
    category: foodCategory.deserts,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

   Food(
    name:"Sweet desert",
    description: "  A sweet cake  patty with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/desserts/d3.jpg",
    price: 0.89,
    category: foodCategory.deserts,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

   Food(
    name:"Sweet desert",
    description: "  A sweet cake  patty with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/desserts/d4.jpg",
    price: 0.89,
    category: foodCategory.deserts,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

   Food(
    name:"Sweet desert",
    description: "  A sweet cake  patty with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/desserts/d5.jpg",
    price: 0.89,
    category: foodCategory.deserts,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  //DRINKS

   Food(
    name:"Cold Drink",
    description: "A cold drink with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/drinks/p1.jpg",
    price: 0.89,
    category: foodCategory.drinks,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Cold Drink",
    description: "A cold drink with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/drinks/p2.jpg",
    price: 0.89,
    category: foodCategory.drinks,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Cold Drink",
    description: "A cold drink with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/drinks/p3.jpg",
    price: 0.89,
    category: foodCategory.drinks,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Cold Drink",
    description: "A cold drink with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/drinks/p4.jpg",
    price: 0.89,
    category: foodCategory.drinks,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Cold Drink",
    description: "A cold drink with melted icecream,dates,Fruits,and a hint of alomound",
    imagePath: "lib/images/drinks/p5.jpg",
    price: 0.89,
    category: foodCategory.drinks,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),
  
  //SALADS

  Food(
    name:"Natural Salads",
    description: "Variety of natural Healthy salads with melted butter,dates,Fruits,and a bowl of cream",
    imagePath: "lib/images/salads/s1.jpg",
    price: 0.89,
    category: foodCategory.salads,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Natural Salads",
    description: "Variety of natural Healthy salads with melted butter,dates,Fruits,and a bowl of cream",
    imagePath: "lib/images/salads/s2.jpg",
    price: 0.89,
    category: foodCategory.salads,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Natural Salads",
    description: "Variety of natural Healthy salads with melted butter,dates,Fruits,and a bowl of cream",
    imagePath: "lib/images/salads/s3.jpg",
    price: 0.89,
    category: foodCategory.salads,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Natural Salads",
    description: "Variety of natural Healthy salads with melted butter,dates,Fruits,and a bowl of cream",
    imagePath: "lib/images/salads/s4.jpg",
    price: 0.89,
    category: foodCategory.salads,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"Natural Salads",
    description: "Variety of natural Healthy salads with melted butter,dates,Fruits,and a bowl of cream",
    imagePath: "lib/images/salads/s5.jpg",
    price: 0.89,
    category: foodCategory.salads,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),
  

  // SIDES

  Food(
    name:"TASTY SNACKS",
    description: "Evening go to and refreshfull snacks Healthy with melted butter,dates,Fruits,and a hint of Ketchup and Mayo",
    imagePath: "lib/images/sides/f1.jpg",
    price: 0.89,
    category: foodCategory.slides,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"TASTY SNACKS",
    description: "Evening go to and refreshfull snacks Healthy with melted butter,dates,Fruits,and a hint of Ketchup and Mayo",
    imagePath: "lib/images/sides/f2.jpg",
    price: 0.89,
    category: foodCategory.slides,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"TASTY SNACKS",
    description: "Evening go to and refreshfull snacks Healthy with melted butter,dates,Fruits,and a hint of Ketchup and Mayo",
    imagePath: "lib/images/sides/f3.jpg",
    price: 0.89,
    category: foodCategory.slides,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"TASTY SNACKS",
    description: "Evening go to and refreshfull snacks Healthy with melted butter,dates,Fruits,and a hint of Ketchup and Mayo",
    imagePath: "lib/images/sides/f4.jpg",
    price: 0.89,
    category: foodCategory.slides,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),

  Food(
    name:"TASTY SNACKS",
    description: "Evening go to and refreshfull snacks Healthy with melted butter,dates,Fruits,and a hint of Ketchup and Mayo",
    imagePath: "lib/images/sides/f5.jpg",
    price: 0.89,
    category: foodCategory.slides,
    availableAddons: [
      Addon(name: "Extra Cheese", price: 0.99),
      Addon(name: 'Bacon', price: 1.99),
      Addon(name: "Avocado", price: 2.00)
    ]

  ),
  
  
  ];
  /*
    G  E TT ERS

  */
 List<Food> get menu=> _menu;
 List<CartItem> get cart => _cart;

 /* 
 Operation
 */
// user cart
final List<CartItem> _cart=[];

//Delivery address to chnage/update
String _deliveryAddress='24 Hyderabad';

String get deliveryAddress=>_deliveryAddress;

void updateDeliveryAddress(String newAddress){
  _deliveryAddress=newAddress;
  notifyListeners();
}

//add to cart
  void addToCart(Food food,List<Addon> selectedAddOns){
    CartItem? cartItem = _cart.firstWhereOrNull((item){
      bool isSameFood = item.food==food;

      bool isSameAddons=ListEquality().equals(item.selectedAddOns, selectedAddOns);
      return isSameFood && isSameAddons;
    });

    if(cartItem!=null){
       cartItem.quantity++;
    }

    else{
      _cart.add(CartItem(food: food, selectedAddOns: selectedAddOns));
    }
    notifyListeners();
  }

  // REMOVE FROM CART
  void removeFromCart(CartItem cartItem){
    int cartIndex =_cart.indexOf(cartItem);

    if(cartIndex!=-1){
      if(_cart[cartIndex].quantity>1){
        _cart[cartIndex].quantity--;

      }
      else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }


  //TOATAL PRICE
  double getTotalPrice(){
    double total=0.0;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddOns){
        itemTotal+=addon.price;
      }
      total+=itemTotal+cartItem.quantity;
    }
    return total;
  }

  // No of items
  int getTotalItemCount(){
    int TotalItemCount=0;

    for(CartItem cartItem in _cart){
      TotalItemCount+=cartItem.quantity;
    }
    return TotalItemCount;
  }

  // clear cart

  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  //Displaay receipt
  String displayCartReceipt(){
    final receipt=StringBuffer();
    receipt.writeln("Here's your Receipt");
    receipt.writeln();

    String formattedDate=DateFormat('yyyy-MM-DD HH:MM:SS').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("--------------");

    for(final cartItem in _cart){
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if(cartItem.selectedAddOns.isNotEmpty){
        receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddOns)}");
      }
      receipt.writeln();

    }
    receipt.writeln("-------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  //Generate Receipt

  String _formatPrice(double price){
    return "\$" + price.toStringAsFixed(2);
  }

  //Format listAddons
  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(",");
  }

  

}