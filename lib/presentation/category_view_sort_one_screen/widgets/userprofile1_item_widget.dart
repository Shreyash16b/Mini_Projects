import '../controller/category_view_sort_one_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<CategoryViewSortOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 113.v,
        width: 324.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: userprofile1ItemModelObj.userImage!.value,
                height: 10.v,
                width: 7.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  left: 113.h,
                  bottom: 30.v,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
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
                          imagePath: userprofile1ItemModelObj.userImage1!.value,
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
                        top: 11.v,
                        right: 11.h,
                        bottom: 8.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              userprofile1ItemModelObj.userName!.value,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Container(
                            width: 199.h,
                            margin: EdgeInsets.only(right: 2.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgThumbsUpTealA70001,
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
                                      userprofile1ItemModelObj.userText!.value,
                                      style: CustomTextStyles.bodySmall12,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFavoriteGray400,
                                  height: 13.v,
                                  width: 15.h,
                                  margin: EdgeInsets.only(top: 2.v),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Row(
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgTelevisionTealA70001,
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
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Obx(
                              () => Text(
                                userprofile1ItemModelObj.clinicText!.value,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ),
                          SizedBox(height: 2.v),
                          SizedBox(
                            width: 201.h,
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClockTealA70001,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  margin: EdgeInsets.only(top: 4.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 9.h),
                                  child: Obx(
                                    () => Text(
                                      userprofile1ItemModelObj
                                          .clinicText1!.value,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                SizedBox(
                                  height: 15.v,
                                  width: 45.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Obx(
                                        () => CustomImageView(
                                          imagePath: userprofile1ItemModelObj
                                              .closedImage!.value,
                                          height: 15.v,
                                          width: 45.h,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Obx(
                                          () => Text(
                                            userprofile1ItemModelObj
                                                .closedText!.value,
                                            style: CustomTextStyles
                                                .bodySmallPrimary_1,
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
            ),
          ],
        ),
      ),
    );
  }
}
