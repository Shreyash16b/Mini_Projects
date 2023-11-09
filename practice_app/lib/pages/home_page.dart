import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_app/model/cart.dart';
import 'dart:convert';
import 'package:practice_app/pages/ItemWidget.dart';
import 'package:practice_app/pages/add_to_cart.dart';
import 'package:practice_app/pages/drawer.dart';
import 'package:practice_app/model/dummy.dart';
import 'package:practice_app/pages/home_detail_page.dart';
import 'package:practice_app/pages/store.dart';
import 'package:practice_app/utils/MyTheme.dart';
import 'package:practice_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(const Duration(seconds: 1));
    var calatalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(calatalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        floatingActionButton: VxBuilder(
          mutations: const {AddMutation, RemoveMutation},
          builder: (context, _, __) => FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
            child: const Icon(Icons.shopping_cart_rounded),
          ).badge(
              color: Vx.gray200,
              size: 20,
              count: _cart.items.length,
              textStyle: const TextStyle(color: Colors.black)),
        ),
        backgroundColor: Theme.of(context).canvasColor,
        body: SafeArea(
          child: Container(
              padding: Vx.m12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CatalogHeader(),
                  if (CatalogModel.items != Null &&
                      CatalogModel.items.isNotEmpty)
                    const CatalogList().expand()
                  else
                    const CircularProgressIndicator().centered().expand(),
                ],
              )),
        )
        // // appBar: AppBar(
        // //   title: const Text(
        // //     "New App",
        // //     style: TextStyle(fontSize: 23),
        // //   ),
        // // ),
        // // body: Padding(
        // //   padding: const EdgeInsets.all(16),
        // //   child: Card(
        // //     shape: RoundedRectangleBorder(
        // //       borderRadius: BorderRadius.circular(8),
        // //     ),
        // //     child: (CatalogModel.items != Null && CatalogModel.items.isNotEmpty)
        // //         ? GridView.builder(
        // //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        // //               childAspectRatio: 2 / 3,
        // //               crossAxisCount: 2,
        // //               mainAxisSpacing: 16,
        // //               crossAxisSpacing: 16,
        // //             ),
        // //             itemBuilder: (context, index) {
        // //               final item = CatalogModel.items[index];
        // //               return GridTile(
        // //                 header: Container(
        // //                     padding: const EdgeInsets.all(8),
        // //                     decoration: BoxDecoration(
        // //                         borderRadius: BorderRadius.circular(12),
        // //                         color: Colors.deepPurple),
        // //                     child: Text(
        // //                       item.name,
        // //                       style: const TextStyle(color: Colors.white),
        // //                     )),
        // //                 footer: Container(
        // //                     padding: const EdgeInsets.all(8),
        // //                     decoration: const BoxDecoration(
        // //                         borderRadius: BorderRadius.only(
        // //                             topLeft: Radius.circular(12),
        // //                             topRight: Radius.circular(12)),
        // //                         color: Colors.white),
        // //                     child: Text(
        // //                       "\$${item.price}",
        // //                       style: const TextStyle(color: Colors.black),
        // //                     )),
        // //                 child: Image.network(item.image),
        // //               );
        // //             },
        // //             itemCount: CatalogModel.items.length,
        // //           )
        // ListView.builder(
        //     itemCount: CatalogModel.items.length,
        //     itemBuilder: ((context, index) => ItemWidget(
        //           item: CatalogModel.items[index],
        //         )))
        //         : const Center(
        //             child: CircularProgressIndicator(),
        //           ),
        //   ),
        // ),
        // drawer: const MyDrawer(),
        );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .xl5
            .bold
            .color(Theme.of(context).colorScheme.onPrimary)
            .make(),
        "Trending Products".text.make()
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => HomeDetailsPage(catalog: catalog)),
                  ),
                ),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              catalog.name.text.bold.xl
                  .color(Theme.of(context).colorScheme.onPrimary)
                  .make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                  buttonPadding: EdgeInsets.zero,
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.make(),
                    AddToCart(catalog: catalog)
                  ]).pOnly(right: 8)
            ]))
      ],
    )).color(Theme.of(context).cardColor).rounded.make().py(16);
  }
}

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Image.network(
        image,
      ).box.rounded.color(Theme.of(context).canvasColor).make().w32(context),
    );
  }
}
