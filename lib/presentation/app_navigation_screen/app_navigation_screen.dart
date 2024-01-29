import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Welcome - One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up - Form".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpFormScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up - OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up - Success".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Info Form - One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.infoFormOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Document upload".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.documentUploadScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboard Final".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardFinalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home – Swipe up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeSwipeUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Category View".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.categoryViewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Category View - sort".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryViewSortScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Category View - sort One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryViewSortOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Category View - criteria".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryViewCriteriaScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up - OTP One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOtpOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Doctor Hospital detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.doctorHospitalDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Doctor Sign in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.doctorSignInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up - Doctor".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpDoctorScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Doctor document upload".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.doctorDocumentUploadScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Doctor appointments".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.doctorAppointmentsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
