import '../category_view_sort_screen/widgets/userprofilesection_item_widget.dart';
import 'controller/category_view_sort_controller.dart';
import 'models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sayali_s_application4/core/app_export.dart';

class CategoryViewSortScreen extends GetWidget<CategoryViewSortController> {
  const CategoryViewSortScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  _buildArrowDownSection(),
                  _buildDoctorsNearbySection(),
                  _buildUserProfileSection(),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 768.v,
                          width: double.maxFinite,
                          decoration: AppDecoration.fillBlack,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                _buildSortSection(),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 157.v),
                                        child: SizedBox(
                                            width: 374.h, child: Divider()))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 206.v),
                                        child: SizedBox(
                                            width: 374.h, child: Divider()))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 108.v),
                                        child: SizedBox(
                                            width: 374.h, child: Divider()))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 60.v),
                                        child: SizedBox(
                                            width: 374.h, child: Divider())))
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowDownSection() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 712.v),
            padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 16.v),
            decoration: AppDecoration.gradientLimeAToTealA70001,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowDownPrimary,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(top: 2.v, bottom: 5.v)),
                  Spacer(flex: 45),
                  Text("msg_orthopaedic_doctors".tr,
                      style: CustomTextStyles.bodyLargePrimary),
                  Spacer(flex: 54),
                  CustomImageView(
                      imagePath: ImageConstant.imgSearchPrimary,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(top: 2.v, bottom: 5.v))
                ])));
  }

  /// Section Widget
  Widget _buildDoctorsNearbySection() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.fromLTRB(27.h, 66.v, 27.h, 684.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("msg_47_doctors_nearby".tr,
                      style: CustomTextStyles.bodySmallGray50001),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgIconMaterialSort,
                      height: 10.v,
                      width: 15.h,
                      margin: EdgeInsets.symmetric(vertical: 3.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text("lbl_sort".tr,
                          style: CustomTextStyles.bodySmallGray50001)),
                  CustomImageView(
                      imagePath: ImageConstant.imgIconMaterialSort,
                      height: 10.v,
                      width: 15.h,
                      margin:
                          EdgeInsets.only(left: 12.h, top: 3.v, bottom: 3.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text("lbl_filter".tr,
                          style: CustomTextStyles.bodySmallGray50001))
                ])));
  }

  /// Section Widget
  Widget _buildUserProfileSection() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.fromLTRB(23.h, 98.v, 23.h, 23.v),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 22.v);
                },
                itemCount: controller.categoryViewSortModelObj.value
                    .userprofilesectionItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofilesectionItemModel model = controller
                      .categoryViewSortModelObj
                      .value
                      .userprofilesectionItemList
                      .value[index];
                  return UserprofilesectionItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildSortSection() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgGroup107),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("lbl_sort".tr,
                                style: CustomTextStyles.bodyLargeGray800),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgClosePrimarycontainer,
                                height: 15.v,
                                width: 14.h,
                                margin: EdgeInsets.only(
                                    left: 129.h, top: 3.v, bottom: 4.v),
                                onTap: () {
                                  onTapImgClose();
                                })
                          ])),
                  SizedBox(height: 28.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtDistanceLowTo();
                      },
                      child: Text("msg_distance_low_to".tr,
                          style: CustomTextStyles.bodyLargeGray800)),
                  SizedBox(height: 26.v),
                  Text("msg_distance_high_to".tr,
                      style: CustomTextStyles.bodyLargeGray800),
                  SizedBox(height: 25.v),
                  Text("msg_ratings_high_to".tr,
                      style: CustomTextStyles.bodyLargeGray800),
                  SizedBox(height: 26.v),
                  Text("msg_rating_low_to_high".tr,
                      style: CustomTextStyles.bodyLargeGray800)
                ])));
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapImgClose() {
    Get.toNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewCriteriaScreen when the action is triggered.
  onTapTxtDistanceLowTo() {
    Get.toNamed(
      AppRoutes.categoryViewCriteriaScreen,
    );
  }
}
