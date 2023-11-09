import 'package:flutter/material.dart';
import 'package:practice_app/pages/add_to_cart.dart';
import 'package:practice_app/utils/MyTheme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../model/dummy.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailsPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).cardColor,
        child: ButtonBar(
            buttonPadding: EdgeInsets.zero,
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.xl4.make(),
              AddToCart(
                catalog: catalog,
              ).wh(120, 50)
            ]).p32(),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30,
              edge: VxEdge.top,
              arcType: VxArcType.convey,
              child: Container(
                color: Theme.of(context).cardColor,
                child: Center(
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4
                          .color(Theme.of(context).colorScheme.onPrimary)
                          .make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                      "Amet dolores magna dolore lorem sed, ipsum justo amet consetetur accusam no sadipscing accusam. Et dolor et rebum aliquyam est, eirmod rebum clita vero tempor, lorem vero kasd dolores amet. Sanctus sadipscing invidunt nonumy ipsum consetetur vero ut ipsum. Justo ut stet labore vero sed lorem justo et voluptua, dolor."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16()
                    ],
                  ).py64(),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
