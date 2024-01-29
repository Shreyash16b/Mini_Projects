import '../controller/home_swipe_up_controller.dart';
import '../models/doctorreviews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class DoctorreviewsItemWidget extends StatelessWidget {
  DoctorreviewsItemWidget(
    this.doctorreviewsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DoctorreviewsItemModel doctorreviewsItemModelObj;

  var controller = Get.find<HomeSwipeUpController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 113.v,
        width: 98.h,
        decoration: BoxDecoration(),
      ),
    );
  }
}
