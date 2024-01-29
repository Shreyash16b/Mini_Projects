import '../controller/home_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<HomeController>();

  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: AppDecoration.outlineBlack,
        child: Container(
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: userprofileItemModelObj.userImage!.value,
                  height: 113.v,
                  width: 98.h,
                  radius: BorderRadius.horizontal(
                    left: Radius.circular(15.h),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => Text(
                              userprofileItemModelObj.drAnandShinde!.value,
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
                    Row(
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
                              userprofileItemModelObj.bDSDentalSurgeon!.value,
                              style: CustomTextStyles.bodySmall12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionTealA70001,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 9.v,
                          width: 10.h,
                          margin: EdgeInsets.only(left: 9.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 9.v,
                          width: 10.h,
                          margin: EdgeInsets.only(left: 3.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 9.v,
                          width: 10.h,
                          margin: EdgeInsets.only(left: 3.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 9.v,
                          width: 10.h,
                          margin: EdgeInsets.only(left: 3.h),
                        ),
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                userprofileItemModelObj.signalImage5!.value,
                            height: 9.v,
                            width: 10.h,
                            margin: EdgeInsets.only(left: 3.h),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedin,
                          height: 10.v,
                          width: 7.h,
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Obx(
                            () => Text(
                              userprofileItemModelObj.tuljaiClinic!.value,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 199.h,
                      child: Row(
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
                                userprofileItemModelObj.time!.value,
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
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgTelevisionTealA7000115x45,
                                  height: 15.v,
                                  width: 45.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Obx(
                                    () => Text(
                                      userprofileItemModelObj.open!.value,
                                      style:
                                          CustomTextStyles.bodySmallPrimary_1,
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
    );
  }
}
