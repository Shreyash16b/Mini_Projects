import 'controller/info_form_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/core/utils/validation_functions.dart';
import 'package:sayali_s_application4/widgets/custom_drop_down.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_text_form_field.dart';

class InfoFormOneScreen extends GetWidget<InfoFormOneController> {
  InfoFormOneScreen({Key? key}) : super(key: key) {
    // Initialize the controller here
    Get.put(InfoFormOneController());
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgHealthELogo119x375,
                      height: 119.v,
                      width: 375.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 37.h,
                        vertical: 33.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup14,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 197.h,
                            child: Text(
                              "msg_let_s_get_to_know".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.headlineMediumPrimary,
                            ),
                          ),
                          SizedBox(height: 27.v),
                          _buildName(),
                          SizedBox(height: 26.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildMaleButton(),
                                _buildFemaleButton(),
                              ],
                            ),
                          ),
                          SizedBox(height: 26.v),
                          _buildDateOfBirthColumn(context),
                          SizedBox(height: 23.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildHeightCmsEditText(),
                                _buildWeightKgEditText(),
                              ],
                            ),
                          ),
                          SizedBox(height: 42.v),
                          _buildNextButton(),
                          SizedBox(height: 29.v),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildName() {
    return CustomTextFormField(
      controller: controller.nameController,
      hintText: "lbl_your_name".tr,
      hintStyle: CustomTextStyles.bodyLargeGray80001,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  Widget _buildMaleButton() {
    return Expanded(
      child: CustomElevatedButton(
        height: 51.v,
        text: "lbl_male".tr,
        margin: EdgeInsets.only(right: 14.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 18.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgIconMaterialwc,
            height: 30.v,
            width: 10.h,
          ),
        ),
        buttonTextStyle: CustomTextStyles.bodyLargeTealA70001_1,
      ),
    );
  }

  Widget _buildFemaleButton() {
    return Expanded(
      child: CustomElevatedButton(
        height: 51.v,
        text: "lbl_female".tr,
        margin: EdgeInsets.only(left: 14.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 6.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgIconMaterialwc,
            height: 30.v,
            width: 13.h,
          ),
        ),
        buttonTextStyle: CustomTextStyles.bodyLargeTealA70001_1,
      ),
    );
  }

  Widget _buildDateOfBirthColumn(BuildContext context) {
    DateTime selectedDate =
        DateTime.now(); // You can set the initial date as needed

    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 13.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup32,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_date_of_birth".tr,
              style: CustomTextStyles.bodyLargePrimary,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: CustomDropDown(
                      hintText: "lbl_year".tr,
                      items: controller
                          .infoFormOneModelObj.value.dropdownItemList.value,
                      onChanged: (value) {
                        controller.onDateSelected(value as DateTime);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    child: CustomDropDown(
                      hintText: "lbl_month".tr,
                      items: controller
                          .infoFormOneModelObj.value.dropdownItemList1.value,
                      onChanged: (value) {
                        controller.onDateSelected(value as DateTime);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: CustomDropDown(
                      hintText: "lbl_day".tr,
                      items: controller
                          .infoFormOneModelObj.value.dropdownItemList2.value,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 15.v,
                      ),
                      onChanged: (value) {
                        controller.onDateSelected(value as DateTime);
                      },
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );

                    if (pickedDate != null && pickedDate != selectedDate) {
                      // Handle the selected date
                      selectedDate = pickedDate;
                      // You may want to update your controller with the selectedDate
                      controller.onDateSelected(selectedDate);
                    }
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  Widget _buildHeightCmsEditText() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: CustomTextFormField(
          controller: controller.heightCmsEditTextController,
          hintText: "lbl_height_cms".tr,
          hintStyle: CustomTextStyles.bodyLargeGray80001,
        ),
      ),
    );
  }

  Widget _buildWeightKgEditText() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: controller.weightKgEditTextController,
          hintText: "lbl_weight_kg".tr,
          hintStyle: CustomTextStyles.bodyLargeGray80001,
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return CustomElevatedButton(
      width: 144.h,
      text: "lbl_next".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 14.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowright,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
      ),
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          // Perform any additional logic or validation before navigating to the next page

          // Example: Navigate to the next page
          // Replace 'NextPage' with the actual route name of your next page
          Get.toNamed('document_upload_screen');
        }
      },
    );
  }
}
