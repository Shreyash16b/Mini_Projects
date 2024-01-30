import '../category_view_screen/widgets/userprofilerow_item_widget.dart';
import 'controller/category_view_controller.dart';
import 'models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CategoryViewScreen extends GetWidget<CategoryViewController> {
  const CategoryViewScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              _buildDoctorsNearbyRow(),
              SizedBox(height: 14.v),
              _buildUserProfileRow(),
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
        text: "msg_orthopaedic_doctors".tr,
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
  Widget _buildDoctorsNearbyRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_47_doctors_nearby".tr,
            style: CustomTextStyles.bodySmallGray50001,
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgIconMaterialSort,
            height: 10.v,
            width: 15.h,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_sort".tr,
              style: CustomTextStyles.bodySmallGray50001,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconMaterialSort,
            height: 10.v,
            width: 15.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 3.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
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
  Widget _buildUserProfileRow() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Obx(
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
          itemCount: controller
              .categoryViewModelObj.value.userprofilerowItemList.value.length,
          itemBuilder: (context, index) {
            UserprofilerowItemModel model = controller
                .categoryViewModelObj.value.userprofilerowItemList.value[index];
            return UserprofilerowItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  void onTapNext() {
    Get.toNamed(AppRoutes.categoryViewSortScreen);
  }
}
