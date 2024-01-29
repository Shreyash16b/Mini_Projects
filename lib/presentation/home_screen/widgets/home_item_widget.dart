import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
    this.onTapFortySix,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapFortySix;

  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () {
            onTapFortySix!.call();
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 21.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.gradientLimeAToTealA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                Obx(
                  () => CustomImageView(
                    imagePath: homeItemModelObj.cardiologistImage!.value,
                    height: 39.v,
                    width: 44.h,
                  ),
                ),
                SizedBox(height: 13.v),
                Obx(
                  () => Text(
                    homeItemModelObj.cardiologistText!.value,
                    style: CustomTextStyles.bodySmallPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
