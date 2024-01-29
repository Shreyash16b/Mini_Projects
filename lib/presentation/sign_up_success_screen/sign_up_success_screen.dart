import 'controller/sign_up_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/core/utils/validation_functions.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpSuccessScreen extends GetWidget<SignUpSuccessController> {
  SignUpSuccessScreen({Key? key}) : super(key: key);

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
                            child: Column(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgHealthELogo119x375,
                                  height: 119.v,
                                  width: 375.h),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 39.h, vertical: 63.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup14),
                                          fit: BoxFit.cover)),
                                  child: Column(children: [
                                    Text("msg_congratulations".tr,
                                        style: CustomTextStyles
                                            .displaySmallRegular),
                                    SizedBox(height: 6.v),
                                    Text("lbl_you_are_in".tr,
                                        style:
                                            CustomTextStyles.headlineLargeBold),
                                    SizedBox(height: 26.v),
                                    SizedBox(
                                        width: 190.h,
                                        child: Text(
                                            "msg_please_login_to_continue".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .headlineMediumPrimaryBold)),
                                    SizedBox(height: 28.v),
                                    CustomTextFormField(
                                        controller: controller.phoneController,
                                        hintText: "msg_enter_your_email".tr,
                                        hintStyle: theme.textTheme.bodyLarge!,
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
                                    SizedBox(height: 30.v),
                                    Obx(() => CustomTextFormField(
                                        controller:
                                            controller.passwordController,
                                        hintText: "lbl_enter_password".tr,
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword.value =
                                                  !controller
                                                      .isShowPassword.value;
                                            },
                                            child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 30.h,
                                                    vertical: 15.v),
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
                                    SizedBox(height: 45.v),
                                    CustomElevatedButton(
                                        width: 144.h,
                                        text: "lbl_login2".tr,
                                        rightIcon: Container(
                                            margin: EdgeInsets.only(left: 9.h),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrowrightRedA200,
                                                height: 22.adaptSize,
                                                width: 22.adaptSize)),
                                        buttonTextStyle:
                                            CustomTextStyles.titleLargeRedA200,
                                        onPressed: () {
                                          onTapLogin();
                                        }),
                                    SizedBox(height: 77.v)
                                  ]))
                            ])))))));
  }

  /// Navigates to the infoFormOneScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.infoFormOneScreen,
    );
  }
}
