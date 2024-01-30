import 'controller/onboard_final_controller.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/presentation/location_popup_dialog/location_popup_dialog.dart';
import 'package:sayali_s_application4/presentation/location_popup_dialog/controller/location_popup_controller.dart';

class OnboardFinalScreen extends GetWidget<OnboardFinalController> {
  const OnboardFinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            height: 768.v,
            width: double.maxFinite,
            decoration: AppDecoration.fillGray,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.h, vertical: 61.v),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup14),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 233.h,
                          margin: EdgeInsets.only(left: 43.h, right: 44.h),
                          child: Text(
                            "msg_superb_you_are".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.displaySmall36,
                          ),
                        ),
                        SizedBox(height: 59.v),
                        _buildSuperbYouAre(),
                        SizedBox(height: 51.v),
                        CustomElevatedButton(
                          width: 144.h,
                          text: "lbl_begin".tr,
                          rightIcon: Container(
                            margin: EdgeInsets.only(left: 8.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowrightRedA200,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                            ),
                          ),
                          buttonTextStyle: CustomTextStyles.titleLargeRedA200,
                          onPressed: () {
                            onTapBegin();
                          },
                        ),
                        SizedBox(height: 19.v),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgHealthELogo119x375,
                  height: 119.v,
                  width: 375.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 8.v),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSuperbYouAre() {
    return SizedBox(
        height: 257.v,
        width: 320.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 17.v),
                  child: SizedBox(
                      width: 320.h,
                      child: Divider(color: theme.colorScheme.primary)))),
          CustomImageView(
              imagePath: ImageConstant.imgUserDeepOrange100,
              height: 14.v,
              width: 13.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 111.v, right: 114.h)),
          CustomImageView(
              imagePath: ImageConstant.imgUserDeepPurple100,
              height: 12.v,
              width: 10.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 107.v, right: 111.h)),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsDeepOrange100,
              height: 18.v,
              width: 8.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 50.h, bottom: 13.v)),
          CustomImageView(
              imagePath: ImageConstant.imgPath130,
              height: 22.v,
              width: 14.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 86.h, bottom: 14.v)),
          CustomImageView(
              imagePath: ImageConstant.imgPath131,
              height: 131.v,
              width: 60.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 45.h, bottom: 29.v)),
          CustomImageView(
              imagePath: ImageConstant.imgUserOnprimary,
              height: 21.v,
              width: 17.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 42.h)),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsOnprimary,
              height: 20.v,
              width: 34.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 82.h, bottom: 5.v)),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(top: 7.v, right: 75.h),
                  decoration: BoxDecoration(
                      color: appTheme.deepOrange100,
                      borderRadius: BorderRadius.circular(12.h)))),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsDeepOrange10034x19,
              height: 34.v,
              width: 19.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 24.v, right: 72.h)),
          CustomImageView(
              imagePath: ImageConstant.imgTelevisionOnerrorcontainer,
              height: 71.v,
              width: 41.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 31.v, right: 63.h)),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 95.v,
                  width: 29.h,
                  margin: EdgeInsets.only(top: 33.v, right: 44.h),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPath136,
                        height: 95.v,
                        width: 29.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            height: 18.v,
                            width: 17.h,
                            margin: EdgeInsets.only(left: 2.h, bottom: 7.v),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgUserDeepOrange100,
                                  height: 14.v,
                                  width: 13.h,
                                  alignment: Alignment.bottomLeft),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgTelevisionDeepPurple100,
                                  height: 15.v,
                                  width: 10.h,
                                  alignment: Alignment.topRight)
                            ])))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgPath137,
              height: 90.v,
              width: 18.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 42.v, right: 93.h)),
          CustomImageView(
              imagePath: ImageConstant.imgPath138,
              height: 69.v,
              width: 22.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 49.v, right: 99.h)),
          CustomImageView(
              imagePath: ImageConstant.imgPath141,
              height: 78.v,
              width: 27.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 39.v, right: 36.h)),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 24.v,
                  width: 32.h,
                  margin: EdgeInsets.only(right: 73.h),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgQuestion,
                        height: 24.v,
                        width: 32.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse8,
                        height: 3.v,
                        width: 2.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 2.h, bottom: 4.v))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgPath143,
              height: 12.v,
              width: 44.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15.h, top: 93.v)),
          CustomImageView(
              imagePath: ImageConstant.imgPath144,
              height: 36.v,
              width: 143.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 14.h, top: 104.v)),
          CustomImageView(
              imagePath: ImageConstant.imgPath143,
              height: 12.v,
              width: 44.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15.h, top: 34.v)),
          CustomImageView(
              imagePath: ImageConstant.imgPath144,
              height: 36.v,
              width: 143.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 14.h, top: 46.v)),
          CustomImageView(
              imagePath: ImageConstant.imgPath143,
              height: 12.v,
              width: 44.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 15.h, bottom: 94.v)),
          CustomImageView(
              imagePath: ImageConstant.imgPath144,
              height: 36.v,
              width: 143.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 14.h, bottom: 60.v)),
          CustomImageView(
              imagePath: ImageConstant.imgFolder,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 53.v, right: 120.h)),
          CustomImageView(
              imagePath: ImageConstant.imgCheckmarkPrimary,
              height: 16.v,
              width: 19.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 52.v, right: 115.h)),
          CustomImageView(
              imagePath: ImageConstant.imgFolder,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 111.v, right: 120.h)),
          CustomImageView(
              imagePath: ImageConstant.imgFolder,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 120.h, bottom: 67.v)),
          CustomImageView(
              imagePath: ImageConstant.imgCheckmarkPrimary,
              height: 16.v,
              width: 19.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 115.h, bottom: 72.v))
        ]));
  }

  /// Displays a dialog with the [LocationPopupDialog] content.
  onTapBegin() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: LocationPopupDialog(
        Get.put(
          LocationPopupController(),
        ),
      ),
    )).then((value) {
      // After the dialog is closed, navigate to the HomeScreen
      Get.toNamed(AppRoutes.homeScreen);
    });
  }
}
