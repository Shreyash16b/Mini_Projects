import '../home_swipe_up_screen/widgets/doctorreviews_item_widget.dart';
import '../home_swipe_up_screen/widgets/recentorders_item_widget.dart';
import 'controller/home_swipe_up_controller.dart';
import 'models/doctorreviews_item_model.dart';
import 'models/recentorders_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_subtitle.dart';
import 'package:sayali_s_application4/widgets/app_bar/custom_app_bar.dart';

class HomeSwipeUpScreen extends GetWidget<HomeSwipeUpController> {
  const HomeSwipeUpScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                height: 705.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  _buildDoctorReviews(),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 1002.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 90.h, vertical: 1.v),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: fs.Svg(
                                                ImageConstant.imgGroup107),
                                            fit: BoxFit.cover)),
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapSettings();
                                        },
                                        child: Container(
                                            height: 33.v,
                                            width: 194.h,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 7.v),
                                            decoration:
                                                AppDecoration.fillPrimary,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettingsTealA7000111x18,
                                                height: 11.v,
                                                width: 18.h,
                                                alignment:
                                                    Alignment.bottomCenter))))),
                            SizedBox(
                                width: double.maxFinite,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 31.h, right: 20.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("msg_doctors_near_you".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargePrimaryContainer),
                                              SizedBox(height: 25.v),
                                              _buildRecentOrders()
                                            ]))))
                          ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 27.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgNotification,
            margin: EdgeInsets.only(left: 21.h, top: 15.v, bottom: 15.v)),
        title: Container(
            width: 316.h,
            margin: EdgeInsets.only(left: 17.h),
            padding: EdgeInsets.all(17.h),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgGroup577),
                    fit: BoxFit.cover)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppbarSubtitle(
                      text: "msg_search_for_doctors".tr,
                      margin: EdgeInsets.only(top: 2.v)),
                  AppbarImage(
                      imagePath: ImageConstant.imgSearch,
                      margin:
                          EdgeInsets.only(left: 42.h, right: 5.h, bottom: 1.v))
                ])),
        styleType: Style.bgStyle_1);
  }

  /// Section Widget
  Widget _buildDoctorReviews() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.fromLTRB(31.h, 107.v, 246.h, 86.v),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20.v);
                },
                itemCount: controller.homeSwipeUpModelObj.value
                    .doctorreviewsItemList.value.length,
                itemBuilder: (context, index) {
                  DoctorreviewsItemModel model = controller.homeSwipeUpModelObj
                      .value.doctorreviewsItemList.value[index];
                  return DoctorreviewsItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildRecentOrders() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 21.v);
            },
            itemCount: controller
                .homeSwipeUpModelObj.value.recentordersItemList.value.length,
            itemBuilder: (context, index) {
              RecentordersItemModel model = controller
                  .homeSwipeUpModelObj.value.recentordersItemList.value[index];
              return RecentordersItemWidget(model);
            })));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSettings() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
