import '../category_view_criteria_screen/widgets/userprofile2_item_widget.dart';
import 'controller/category_view_criteria_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CategoryViewCriteriaScreen
    extends GetWidget<CategoryViewCriteriaController> {
  const CategoryViewCriteriaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 712.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 10.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    right: 45.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconMaterialSort,
                        height: 10.v,
                        width: 15.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconMaterialSort,
                        height: 10.v,
                        width: 15.h,
                        margin: EdgeInsets.only(left: 48.h),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildDoctorsNearby(),
                      SizedBox(height: 14.v),
                      _buildUserProfile(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 41.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownPrimary,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 19.v,
          bottom: 22.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_doctors_matching".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchPrimary,
          margin: EdgeInsets.fromLTRB(26.h, 18.v, 26.h, 22.v),
        ),
      ],
      styleType: Style.bgGradientnamelimeA700nametealA70001,
    );
  }

  /// Section Widget
  Widget _buildDoctorsNearby() {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_47_doctors_nearby".tr,
            style: CustomTextStyles.bodySmallGray50001,
          ),
          Padding(
            padding: EdgeInsets.only(left: 129.h),
            child: Text(
              "lbl_sort".tr,
              style: CustomTextStyles.bodySmallGray50001,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 39.h),
            child: Text(
              "lbl_filter".tr,
              style: CustomTextStyles.bodySmallGray50001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: controller.categoryViewCriteriaModelObj.value
            .userprofile2ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile2ItemModel model = controller.categoryViewCriteriaModelObj
              .value.userprofile2ItemList.value[index];
          return Userprofile2ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
