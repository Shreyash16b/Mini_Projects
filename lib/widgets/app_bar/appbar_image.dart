// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class AppbarImage {
//   var imagePath;

//   var margin;

//   var onTap;

//   AppbarImage({
//     Key? key,
//     this.imagePath,
//     this.margin,
//     this.onTap,
//   }) : super(
//           key: key,
//         )

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarImage extends StatelessWidget {
  var imagePath;
  var margin;
  var onTap;

  AppbarImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Add your implementation here, for example, return an Image widget
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        child: Image.asset(imagePath),
      ),
    );
  }
}
