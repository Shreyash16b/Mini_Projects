import '../controller/category_view_sort_controller.dart';
import '../models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  var controller = Get.find<CategoryViewSortController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 113.v,
              width: 98.h,
              decoration: AppDecoration.outlineBlack900,
              child: Obx(
                () => CustomImageView(
                  imagePath: userprofilesectionItemModelObj.userImage!.value,
                  height: 113.v,
                  width: 98.h,
                  radius: BorderRadius.horizontal(
                    left: Radius.circular(15.h),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 9.v,
                right: 12.h,
                bottom: 7.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 200.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            userprofilesectionItemModelObj.drAnandShinde!.value,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoriteGray400,
                          height: 13.v,
                          width: 15.h,
                          margin: EdgeInsets.only(bottom: 3.v),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbsUpTealA70001,
                          height: 8.v,
                          width: 10.h,
                          margin: EdgeInsets.only(
                            top: 3.v,
                            bottom: 4.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Obx(
                            () => Text(
                              userprofilesectionItemModelObj
                                  .specializationText!.value,
                              style: CustomTextStyles.bodySmall12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionTealA70001,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup451,
                          height: 9.v,
                          width: 62.h,
                          margin: EdgeInsets.only(left: 9.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      userprofilesectionItemModelObj.clinicText!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 200.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClockTealA70001,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(top: 3.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Obx(
                            () => Text(
                              userprofilesectionItemModelObj.time!.value,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 15.v,
                          width: 45.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Obx(
                                () => CustomImageView(
                                  imagePath: userprofilesectionItemModelObj
                                      .open!.value,
                                  height: 15.v,
                                  width: 45.h,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Obx(
                                  () => Text(
                                    userprofilesectionItemModelObj
                                        .openText!.value,
                                    style: CustomTextStyles.bodySmallPrimary_1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
