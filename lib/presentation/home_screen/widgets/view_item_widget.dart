import '../controller/home_controller.dart';
import '../models/view_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ViewItemWidget extends StatelessWidget {
  ViewItemWidget(
    this.viewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewItemModel viewItemModelObj;

  var controller = Get.find<HomeController>();

  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 113.v,
          width: 98.h,
          margin: EdgeInsets.only(bottom: 166.v),
          decoration: BoxDecoration(),
        ),
      ),
    );
  }
}
