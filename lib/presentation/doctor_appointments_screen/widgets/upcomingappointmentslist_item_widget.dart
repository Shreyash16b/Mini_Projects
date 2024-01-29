import '../controller/doctor_appointments_controller.dart';
import '../models/upcomingappointmentslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class UpcomingappointmentslistItemWidget extends StatelessWidget {
  UpcomingappointmentslistItemWidget(
    this.upcomingappointmentslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UpcomingappointmentslistItemModel upcomingappointmentslistItemModelObj;

  var controller = Get.find<DoctorAppointmentsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116.v,
      width: 324.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLinkedin,
            height: 10.v,
            width: 7.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 111.h,
              bottom: 22.v,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 116.v,
              width: 324.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 125.h,
                        vertical: 40.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 14.v),
                          Obx(
                            () => CustomImageView(
                              imagePath: upcomingappointmentslistItemModelObj
                                  .bugCountImage!.value,
                              height: 19.v,
                              width: 21.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 113.v,
                      width: 98.h,
                      margin: EdgeInsets.only(left: 5.h),
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 117.h,
                        top: 11.v,
                        right: 16.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              upcomingappointmentslistItemModelObj
                                  .bugCountText!.value,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 14.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Obx(
                              () => Text(
                                upcomingappointmentslistItemModelObj
                                    .timeText!.value,
                                style: CustomTextStyles.bodyMediumGray70001,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Obx(
                              () => Text(
                                upcomingappointmentslistItemModelObj
                                    .locationText!.value,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 16.h,
                        bottom: 9.v,
                      ),
                      child: Obx(
                        () => Text(
                          upcomingappointmentslistItemModelObj.openText!.value,
                          style: CustomTextStyles.bodySmallPrimary_1,
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath:
                          upcomingappointmentslistItemModelObj.openImage!.value,
                      height: 116.v,
                      width: 93.h,
                      radius: BorderRadius.horizontal(
                        left: Radius.circular(15.h),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 20.h,
                        bottom: 4.v,
                      ),
                      child: Obx(
                        () => Text(
                          upcomingappointmentslistItemModelObj
                              .cancelText!.value,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
