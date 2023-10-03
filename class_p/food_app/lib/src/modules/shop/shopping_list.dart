import 'package:flutter/material.dart';
import 'package:json_test/src/modules/shop/local_widget.dart/shopping_chackout.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({super.key});

  @override
  State<ShoppingList> createState() => ShoppingListState();
}

class ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Checkout(),
    );
  }
}