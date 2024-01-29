import 'controller/doctor_document_upload_controller.dart';
import 'package:flutter/material.dart';
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/core/utils/validation_functions.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DoctorDocumentUploadScreen
    extends GetWidget<DoctorDocumentUploadController> {
  DoctorDocumentUploadScreen({Key? key}) : super(key: key);

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
                                  width: double.maxFinite,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 27.h, vertical: 56.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup14),
                                          fit: BoxFit.cover)),
                                  child: Column(children: [
                                    _buildDoctorName(),
                                    SizedBox(height: 47.v),
                                    _buildSpecializationValue(),
                                    SizedBox(height: 43.v),
                                    _buildQualification(),
                                    SizedBox(height: 18.v),
                                    Text("msg_upload_medical_certificate".tr,
                                        style: theme.textTheme.headlineSmall),
                                    SizedBox(height: 25.v),
                                    _buildSearch(),
                                    SizedBox(height: 22.v),
                                    Container(
                                        width: 288.h,
                                        margin: EdgeInsets.only(
                                            left: 12.h, right: 20.h),
                                        child: Text(
                                            "msg_note_the_authenticity".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .bodyLargeBlack900)),
                                    SizedBox(height: 42.v),
                                    _buildNext(),
                                    SizedBox(height: 7.v)
                                  ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildDoctorName() {
    return Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: CustomTextFormField(
            controller: controller.doctorNameController,
            hintText: "lbl_your_name".tr,
            hintStyle: CustomTextStyles.bodyLargeGray80001,
            alignment: Alignment.centerRight,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildSpecializationValue() {
    return Padding(
        padding: EdgeInsets.only(left: 32.h, right: 31.h),
        child: CustomTextFormField(
            controller: controller.specializationValueController,
            hintText: "msg_enter_specialization".tr,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
            borderDecoration: TextFormFieldStyleHelper.fillPrimaryTL16));
  }

  /// Section Widget
  Widget _buildQualification() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child: CustomTextFormField(
            controller: controller.qualificationController,
            hintText: "msg_enter_qualification".tr,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
            borderDecoration: TextFormFieldStyleHelper.fillPrimaryTL16));
  }

  /// Section Widget
  Widget _buildSearch() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 13.h),
        child: CustomTextFormField(
            controller: controller.searchController,
            hintText: "lbl_search".tr,
            hintStyle: CustomTextStyles.titleMediumTealA70001,
            textInputAction: TextInputAction.done,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 2.h, vertical: 12.v),
            borderDecoration: TextFormFieldStyleHelper.fillPrimaryTL24));
  }

  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
        width: 144.h,
        text: "lbl_next".tr,
        rightIcon: Container(
            margin: EdgeInsets.only(left: 22.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowright,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        onPressed: () {
          onTapNext();
        });
  }

  /// Navigates to the onboardFinalScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardFinalScreen,
    );
  }
}
