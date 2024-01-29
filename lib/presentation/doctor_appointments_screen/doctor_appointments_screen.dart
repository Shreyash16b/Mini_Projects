import '../doctor_appointments_screen/widgets/upcomingappointmentslist_item_widget.dart';
import 'controller/doctor_appointments_controller.dart';
import 'models/upcomingappointmentslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DoctorAppointmentsScreen extends GetWidget<DoctorAppointmentsController> {
  const DoctorAppointmentsScreen({Key? key})
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
            horizontal: 22.h,
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_upcoming_3".tr,
                  style: CustomTextStyles.bodySmallTealA70001,
                ),
              ),
              SizedBox(height: 4.v),
              _buildUpcomingAppointmentsList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 22.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgNotificationPrimary,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 11.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_upcoming_appointments".tr,
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
  Widget _buildUpcomingAppointmentsList() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 26.v,
            );
          },
          itemCount: controller.doctorAppointmentsModelObj.value
              .upcomingappointmentslistItemList.value.length,
          itemBuilder: (context, index) {
            UpcomingappointmentslistItemModel model = controller
                .doctorAppointmentsModelObj
                .value
                .upcomingappointmentslistItemList
                .value[index];
            return UpcomingappointmentslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
