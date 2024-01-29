import 'controller/location_popup_controller.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LocationPopupDialog extends StatelessWidget {
  LocationPopupDialog(this.controller, {Key? key}) : super(key: key);

  LocationPopupController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 268.h,
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.fillGray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 10.v),
          SizedBox(
              width: 172.h,
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "msg_allow_health_e2".tr,
                        style: CustomTextStyles.bodyLargeff000000),
                    TextSpan(
                        text: "msg_access_your_location".tr,
                        style: CustomTextStyles.titleMediumff000000)
                  ]),
                  textAlign: TextAlign.center)),
          SizedBox(height: 9.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 236.h,
                  margin: EdgeInsets.only(left: 8.h, right: 23.h),
                  child: Text("msg_turn_on_location".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumBlack900))),
          SizedBox(height: 12.v),
          Divider(color: appTheme.gray80049),
          SizedBox(height: 12.v),
          GestureDetector(
              onTap: () {
                onTapTxtOnlyWhileUsing();
              },
              child: Text("msg_only_while_using".tr,
                  style: CustomTextStyles.bodyLargeLightblueA700)),
          SizedBox(height: 7.v),
          Divider(color: appTheme.gray80049),
          SizedBox(height: 12.v),
          GestureDetector(
              onTap: () {
                onTapTxtAlwaysAllow();
              },
              child: Text("lbl_always_allow".tr,
                  style: CustomTextStyles.bodyLargeLightblueA700)),
          SizedBox(height: 7.v),
          Divider(color: appTheme.gray80049),
          SizedBox(height: 10.v),
          Text("lbl_don_t_allow".tr,
              style: CustomTextStyles.bodyLargeLightblueA700)
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtOnlyWhileUsing() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtAlwaysAllow() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
