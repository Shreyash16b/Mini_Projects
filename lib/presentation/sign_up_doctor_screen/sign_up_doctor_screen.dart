import 'controller/sign_up_doctor_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/core/utils/validation_functions.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_phone_number.dart';
import 'package:sayali_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpDoctorScreen extends GetWidget<SignUpDoctorController> {
  SignUpDoctorScreen({Key? key}) : super(key: key);

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
                            height: 768.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          decoration: AppDecoration.fillGray,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Spacer(),
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 39.h,
                                                            vertical: 60.v),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                ImageConstant
                                                                    .imgGroup14),
                                                            fit: BoxFit.cover)),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              width: 224.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          32.h,
                                                                      right:
                                                                          40.h),
                                                              child: Text(
                                                                  "msg_provide_your_details"
                                                                      .tr,
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: theme
                                                                      .textTheme
                                                                      .displaySmall)),
                                                          SizedBox(
                                                              height: 46.v),
                                                          _buildPhoneNumber(),
                                                          SizedBox(
                                                              height: 30.v),
                                                          _buildEmailInput(),
                                                          SizedBox(
                                                              height: 30.v),
                                                          _buildPasswordInput(),
                                                          SizedBox(
                                                              height: 31.v),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          25.h),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgThumbsUp,
                                                                        height: 20
                                                                            .adaptSize,
                                                                        width: 20
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            bottom:
                                                                                26.v)),
                                                                    Expanded(
                                                                        child: Padding(
                                                                            padding: EdgeInsets.only(left: 8.h),
                                                                            child: Column(children: [
                                                                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                Text("lbl_i_agree_to".tr, style: CustomTextStyles.bodyLargeBluegray700),
                                                                                Text("msg_terms_conditions".tr, style: CustomTextStyles.bodyLargePrimary.copyWith(decoration: TextDecoration.underline))
                                                                              ]),
                                                                              SizedBox(height: 1.v),
                                                                              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_and".tr, style: CustomTextStyles.bodyLargeBluegray700)),
                                                                                Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_privacy_policy".tr, style: CustomTextStyles.bodyLargePrimary.copyWith(decoration: TextDecoration.underline)))
                                                                              ])
                                                                            ])))
                                                                  ])),
                                                          SizedBox(
                                                              height: 43.v),
                                                          _buildNextButton(),
                                                          SizedBox(height: 4.v)
                                                        ]))
                                              ]))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgHealthELogo1,
                                      height: 119.v,
                                      width: 375.h,
                                      alignment: Alignment.topCenter)
                                ])))))));
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Obx(() => CustomPhoneNumber(
        country: controller.selectedCountry.value,
        controller: controller.phoneNumberController,
        onTap: (Country value) {
          controller.selectedCountry.value = value;
        }));
  }

  /// Section Widget
  Widget _buildEmailInput() {
    return CustomTextFormField(
        controller: controller.emailInputController,
        hintText: "msg_enter_your_email2".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPasswordInput() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordInputController,
        hintText: "lbl_enter_password".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEyeGray60001,
                    height: 19.v,
                    width: 22.h))),
        suffixConstraints: BoxConstraints(maxHeight: 51.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 18.h, top: 15.v, bottom: 15.v)));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        width: 144.h,
        text: "lbl_next".tr,
        rightIcon: Container(
            margin: EdgeInsets.only(left: 14.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightRedA200,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        buttonTextStyle: CustomTextStyles.titleLargeRedA200,
        onPressed: () {
          onTapNextButton();
        });
  }

  /// Navigates to the signUpOtpScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.signUpOtpScreen,
    );
  }
}
