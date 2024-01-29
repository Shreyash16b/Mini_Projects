import '../controller/category_view_controller.dart';
import '../models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  UserprofilerowItemWidget(
    this.userprofilerowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilerowItemModel userprofilerowItemModelObj;

  var controller = Get.find<CategoryViewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                imagePath: userprofilerowItemModelObj.userImage!.value,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          userprofilerowItemModelObj.drAnandShinde!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              userprofilerowItemModelObj.favoriteImage!.value,
                          height: 13.v,
                          width: 15.h,
                          margin: EdgeInsets.only(bottom: 3.v),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            userprofilerowItemModelObj.thumbsUpImage!.value,
                        height: 8.v,
                        width: 10.h,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 4.v,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Obx(
                        () => Text(
                          userprofilerowItemModelObj.bDSDentalSurgeon!.value,
                          style: CustomTextStyles.bodySmall12,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                Row(
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            userprofilerowItemModelObj.televisionImage!.value,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                      ),
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
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      userprofilerowItemModelObj.tuljaiClinic!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Container(
                  width: 190.h,
                  margin: EdgeInsets.only(right: 9.h),
                  child: Row(
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              userprofilerowItemModelObj.clockImage!.value,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(top: 2.v),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Obx(
                          () => Text(
                            userprofilerowItemModelObj.time!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Spacer(),
                      Obx(
                        () => Text(
                          userprofilerowItemModelObj.openText!.value,
                          style: CustomTextStyles.bodySmallPrimary_1,
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
