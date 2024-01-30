import 'controller/document_upload_controller.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/core/utils/validation_functions.dart';
import 'package:sayali_s_application4/widgets/custom_drop_down.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_text_form_field.dart';

class DocumentUploadScreen extends GetWidget<DocumentUploadController> {
  DocumentUploadScreen({Key? key}) : super(key: key);

  // GlobalKey for the form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Initialize the controller here
    final DocumentUploadController controller =
        Get.put(DocumentUploadController());

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
                                      horizontal: 34.h, vertical: 46.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup14),
                                          fit: BoxFit.cover)),
                                  child: Column(children: [
                                    Text("msg_upload_government".tr,
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 21.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, right: 3.h),
                                        child: CustomDropDown(
                                            icon: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 17.v, 22.h, 13.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSettingsTealA70001,
                                                    height: 13.v,
                                                    width: 26.h)),
                                            hintText: "lbl_select_document".tr,
                                            items: controller
                                                .documentUploadModelObj
                                                .value
                                                .dropdownItemList
                                                .value,
                                            contentPadding: EdgeInsets.only(
                                                left: 30.h,
                                                top: 12.v,
                                                bottom: 12.v),
                                            borderDecoration:
                                                DropDownStyleHelper
                                                    .fillPrimaryTL23,
                                            onChanged: (value) {
                                              controller.onSelected(value);
                                            })),
                                    SizedBox(height: 33.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgVector1,
                                        height: 58.v,
                                        width: 299.h),
                                    SizedBox(height: 86.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, right: 3.h),
                                        child: CustomTextFormField(
                                            controller:
                                                controller.nameController,
                                            hintText: "lbl_if_other_name".tr,
                                            hintStyle: CustomTextStyles
                                                .titleMediumGray80001,
                                            textInputAction:
                                                TextInputAction.done,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "err_msg_please_enter_valid_text"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 8.h,
                                                    vertical: 12.v))),
                                    SizedBox(height: 59.v),
                                    _buildUpload(),
                                    SizedBox(height: 73.v),
                                    CustomElevatedButton(
                                        width: 144.h,
                                        text: "lbl_next".tr,
                                        rightIcon: Container(
                                            margin: EdgeInsets.only(left: 22.h),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowright,
                                                height: 22.adaptSize,
                                                width: 22.adaptSize)),
                                        onPressed: () {
                                          onTapNext();
                                        }),
                                    SizedBox(height: 16.v)
                                  ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildUpload() {
    return SizedBox(
        height: 48.v,
        width: 303.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 48.v,
                  width: 302.h,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(24.h)))),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 12.v, bottom: 14.v),
                            child: Text("lbl_search".tr,
                                style: CustomTextStyles.titleMediumTealA70001)),
                        CustomElevatedButton(
                            width: 102.h,
                            text: "lbl_upload".tr,
                            buttonStyle: CustomButtonStyles.fillLightBlueA,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumBlack900)
                      ])))
        ]));
  }

  /// Navigates to the onboardFinalScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardFinalScreen,
    );
  }
}
