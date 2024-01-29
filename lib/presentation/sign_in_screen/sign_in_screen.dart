import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/core/utils/validation_functions.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
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
                            child: Container(
                                decoration: AppDecoration.fillGray,
                                child: Column(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgHealthELogo119x375,
                                      height: 119.v,
                                      width: 375.h),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 39.h, vertical: 51.v),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant.imgGroup14),
                                              fit: BoxFit.cover)),
                                      child: Column(children: [
                                        Container(
                                            width: 215.h,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 40.h),
                                            child: Text(
                                                "msg_one_app_to_connect".tr,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .displaySmall36)),
                                        SizedBox(height: 35.v),
                                        CustomTextFormField(
                                            controller:
                                                controller.phoneController,
                                            hintText: "msg_enter_your_email".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .tr;
                                              }
                                              return null;
                                            }),
                                        SizedBox(height: 31.v),
                                        Obx(() => CustomTextFormField(
                                            controller:
                                                controller.passwordController,
                                            hintText: "lbl_enter_password".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: InkWell(
                                                onTap: () {
                                                  controller.isShowPassword
                                                          .value =
                                                      !controller
                                                          .isShowPassword.value;
                                                },
                                                child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        30.h, 15.v, 17.h, 15.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEyeGray60001,
                                                        height: 19.v,
                                                        width: 22.h))),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 51.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            obscureText:
                                                controller.isShowPassword.value,
                                            contentPadding: EdgeInsets.only(
                                                left: 18.h,
                                                top: 15.v,
                                                bottom: 15.v))),
                                        SizedBox(height: 36.v),
                                        CustomElevatedButton(
                                            height: 70.v,
                                            text: "lbl_login".tr,
                                            margin: EdgeInsets.only(
                                                left: 40.h, right: 28.h),
                                            rightIcon: Container(
                                                margin:
                                                    EdgeInsets.only(left: 30.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowleft,
                                                    height: 51.v,
                                                    width: 35.h)),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL38,
                                            buttonTextStyle: CustomTextStyles
                                                .titleLargeRedA200,
                                            onPressed: () {
                                              onTapLogin();
                                            }),
                                        SizedBox(height: 27.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: 58.v,
                                                width: 157.h,
                                                margin: EdgeInsets.only(
                                                    right: 61.h),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              height: 58.v,
                                                              width: 157.h,
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primary,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.h)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: SizedBox(
                                                              width: 136.h,
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "lbl_new_member".tr,
                                                                            style: CustomTextStyles.titleLargeffff5555),
                                                                        TextSpan(
                                                                            text:
                                                                                "lbl_signup".tr,
                                                                            style: CustomTextStyles.titleLargeffff5555Medium.copyWith(decoration: TextDecoration.underline))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center)))
                                                    ]))),
                                        SizedBox(height: 51.v)
                                      ]))
                                ]))))))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
