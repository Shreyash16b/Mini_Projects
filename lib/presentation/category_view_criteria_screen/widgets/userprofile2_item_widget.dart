import '../controller/category_view_criteria_controller.dart';
import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<CategoryViewCriteriaController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        children: [
          Container(
            height: 113.v,
            width: 98.h,
            decoration: AppDecoration.outlineBlack900,
            child: Obx(
              () => CustomImageView(
                imagePath: userprofile2ItemModelObj.userImage!.value,
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
              left: 14.h,
              top: 9.v,
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
                          userprofile2ItemModelObj.doctorName!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              userprofile2ItemModelObj.doctorImage!.value,
                          height: 13.v,
                          width: 15.h,
                          margin: EdgeInsets.only(bottom: 3.v),
                        ),
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
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              userprofile2ItemModelObj.thumbsUpImage!.value,
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
                            userprofile2ItemModelObj
                                .doctorSpecialization!.value,
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
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              userprofile2ItemModelObj.televisionImage!.value,
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
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    userprofile2ItemModelObj.clinicName!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 200.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              userprofile2ItemModelObj.clinicTiming!.value,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(top: 3.v),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Obx(
                          () => Text(
                            userprofile2ItemModelObj.clinicTimingText!.value,
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
                                imagePath:
                                    userprofile2ItemModelObj.openImage!.value,
                                height: 15.v,
                                width: 45.h,
                                alignment: Alignment.center,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Obx(
                                () => Text(
                                  userprofile2ItemModelObj.openText!.value,
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
    );
  }
}
