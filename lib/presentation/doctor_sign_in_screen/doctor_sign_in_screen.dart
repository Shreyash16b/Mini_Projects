import 'controller/doctor_sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/core/utils/validation_functions.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DoctorSignInScreen extends GetWidget<DoctorSignInController> {
  DoctorSignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: _buildDoctorSignInPhone()))))));
  }

  /// Section Widget
  Widget _buildDoctorSignInPhone() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 768.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 768.v,
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray50))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                        height: 649.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup14,
                                                  height: 649.v,
                                                  width: 375.h,
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 39.h,
                                                          top: 26.v,
                                                          right: 39.h),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            SizedBox(
                                                                width: 145.h,
                                                                child: Text(
                                                                    "lbl_login_as_doctor"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: CustomTextStyles
                                                                        .displaySmall36)),
                                                            SizedBox(
                                                                height: 102.v),
                                                            CustomTextFormField(
                                                                controller:
                                                                    controller
                                                                        .phoneController,
                                                                hintText:
                                                                    "msg_enter_your_email"
                                                                        .tr,
                                                                hintStyle: theme
                                                                    .textTheme
                                                                    .bodyLarge!,
                                                                textInputType:
                                                                    TextInputType
                                                                        .emailAddress,
                                                                validator:
                                                                    (value) {
                                                                  if (value ==
                                                                          null ||
                                                                      (!isValidEmail(
                                                                          value,
                                                                          isRequired:
                                                                              true))) {
                                                                    return "err_msg_please_enter_valid_email"
                                                                        .tr;
                                                                  }
                                                                  return null;
                                                                })
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 117.h,
                                                          right: 100.h,
                                                          bottom: 132.v),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomElevatedButton(
                                                                text: "lbl_login2"
                                                                    .tr,
                                                                margin:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            1.h,
                                                                        right: 12
                                                                            .h),
                                                                rightIcon: Container(
                                                                    margin: EdgeInsets.only(
                                                                        left: 20
                                                                            .h),
                                                                    child: CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgArrowrightRedA200,
                                                                        height: 22
                                                                            .adaptSize,
                                                                        width: 22
                                                                            .adaptSize)),
                                                                buttonTextStyle:
                                                                    CustomTextStyles
                                                                        .titleLargeRedA200,
                                                                onPressed: () {
                                                                  onTapLogin();
                                                                }),
                                                            SizedBox(
                                                                height: 18.v),
                                                            SizedBox(
                                                                height: 59.v,
                                                                width: 157.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Container(
                                                                              height: 59.v,
                                                                              width: 157.h,
                                                                              decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(10.h)))),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: SizedBox(
                                                                              width: 136.h,
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "lbl_new_member".tr, style: CustomTextStyles.titleLargeffff5555),
                                                                                    TextSpan(text: "lbl_signup".tr, style: CustomTextStyles.titleLargeffff5555Medium.copyWith(decoration: TextDecoration.underline))
                                                                                  ]),
                                                                                  textAlign: TextAlign.center)))
                                                                    ]))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        SizedBox(
                                                            height: 51.v,
                                                            width: 297.h,
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomTextFormField(
                                                                      width:
                                                                          297.h,
                                                                      controller:
                                                                          controller
                                                                              .editTextController,
                                                                      textInputAction:
                                                                          TextInputAction
                                                                              .done,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      obscureText:
                                                                          true),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Container(
                                                                          width: 260.h,
                                                                          margin: EdgeInsets.symmetric(horizontal: 18.h, vertical: 15.v),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            Text("lbl_enter_password".tr,
                                                                                style: theme.textTheme.bodyLarge),
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgEyeGray60001,
                                                                                height: 19.v,
                                                                                width: 22.h)
                                                                          ])))
                                                                ])),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCheckmarkPrimary,
                                                            height: 16.v,
                                                            width: 19.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left:
                                                                        2984.h,
                                                                    top: 17.v,
                                                                    bottom:
                                                                        17.v))
                                                      ]))
                                            ])))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgHealthELogo109x374,
                      height: 109.v,
                      width: 374.h,
                      alignment: Alignment.topCenter)
                ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
