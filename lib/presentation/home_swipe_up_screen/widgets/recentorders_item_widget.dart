import '../controller/home_swipe_up_controller.dart';
import '../models/recentorders_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class RecentordersItemWidget extends StatelessWidget {
  RecentordersItemWidget(
    this.recentordersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentordersItemModel recentordersItemModelObj;

  var controller = Get.find<HomeSwipeUpController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: recentordersItemModelObj.userImage!.value,
              height: 113.v,
              width: 98.h,
              radius: BorderRadius.horizontal(
                left: Radius.circular(15.h),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
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
                          recentordersItemModelObj.drRohitKanade!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFavoriteGray400,
                        height: 13.v,
                        width: 15.h,
                        margin: EdgeInsets.symmetric(vertical: 2.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
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
                          recentordersItemModelObj.mDPediatrician!.value,
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
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: CustomRatingBar(
                        ignoreGestures: true,
                        initialRating: 4,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            recentordersItemModelObj.linkedinImage!.value,
                        height: 10.v,
                        width: 7.h,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Obx(
                        () => Text(
                          recentordersItemModelObj.staywellClinic!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 200.h,
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
                            recentordersItemModelObj.time!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 45.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillTealA,
                        child: Obx(
                          () => Text(
                            recentordersItemModelObj.open!.value,
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
    );
  }
}
