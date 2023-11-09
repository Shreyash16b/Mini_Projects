import 'package:flutter/material.dart';
import 'package:practice_app/model/dummy.dart';
import 'package:practice_app/pages/store.dart';
import 'package:practice_app/utils/MyTheme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:practice_app/model/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart"
            .text
            .color(Theme.of(context).colorScheme.onBackground)
            .xl4
            .make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          const Divider(),
          const _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
              notifications: {},
              mutations: const {RemoveMutation},
              builder: (context, _, __) {
                return "\$${_cart.totalPrice}"
                    .text
                    .xl4
                    .color(Theme.of(context).colorScheme.onSurface)
                    .make();
              }),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: "Buying not supported yet".text.make()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.background),
                      shape: MaterialStateProperty.all(const StadiumBorder())),
                  child: "Buy"
                      .text
                      .color(Theme.of(context).colorScheme.onBackground)
                      .make())
              .wh(100, 50)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  _CartList({super.key});

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                  onPressed: () => RemoveMutation(_cart.items[index]),
                  icon: const Icon(Icons.delete)),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
