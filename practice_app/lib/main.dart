import 'package:flutter/material.dart';
import 'package:practice_app/pages/cart_page.dart';
import 'package:practice_app/pages/home_page.dart';
import 'package:practice_app/pages/drawer.dart';
import 'package:practice_app/pages/login.dart';
import 'package:practice_app/pages/store.dart';
import 'package:practice_app/utils/MyTheme.dart';
import 'package:practice_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lighttheme(context),
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
