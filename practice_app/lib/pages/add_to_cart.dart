import 'package:flutter/material.dart';
import 'package:practice_app/model/cart.dart';
import 'package:practice_app/model/dummy.dart';
import 'package:practice_app/pages/store.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ? true : false;
    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            AddMutation(catalog);
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.background),
            shape: MaterialStateProperty.all(const StadiumBorder())),
        child: isInCart
            ? const Icon(
                Icons.done,
                color: Colors.white,
              )
            : "Add to cart"
                .text
                .color(Theme.of(context).colorScheme.onBackground)
                .make());
  }
}
