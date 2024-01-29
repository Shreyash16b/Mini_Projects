import 'controller/doctor_hospital_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/core/utils/validation_functions.dart';
import 'package:sayali_s_application4/widgets/custom_drop_down.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_rating_bar.dart';
import 'package:sayali_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DoctorHospitalDetailScreen
    extends GetWidget<DoctorHospitalDetailController> {
  DoctorHospitalDetailScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                          SizedBox(
                              height: 768.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgHealthELogo119x375,
                                                  height: 119.v,
                                                  width: 375.h),
                                              SizedBox(height: 5.v),
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 28.v),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              ImageConstant
                                                                  .imgGroup14),
                                                          fit: BoxFit.cover)),
                                                  child: Column(children: [
                                                    _buildHealthELogo(),
                                                    SizedBox(height: 8.v),
                                                    _buildCity1(),
                                                    SizedBox(height: 19.v),
                                                    _buildAddress1(),
                                                    SizedBox(height: 13.v),
                                                    _buildOR(),
                                                    SizedBox(height: 37.v),
                                                    _buildSearchForHospital(),
                                                    SizedBox(height: 37.v)
                                                  ]))
                                            ])),
                                    _buildNext1()
                                  ])),
                          SizedBox(height: 27.v),
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgIconMaterialLocationOn,
                              height: 10.v,
                              width: 7.h,
                              margin: EdgeInsets.only(right: 23.h)),
                          SizedBox(height: 28.v),
                          Padding(
                              padding: EdgeInsets.only(right: 36.h),
                              child: _buildTelevision1(
                                  televisionImage:
                                      ImageConstant.imgTelevisionRedA20015x45,
                                  openButtonText: "lbl_closed".tr)),
                          SizedBox(height: 28.v),
                          _buildIconMaterialAlbum(),
                          SizedBox(height: 30.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgIconMaterialAlbum,
                              height: 10.adaptSize,
                              width: 10.adaptSize,
                              margin: EdgeInsets.only(right: 21.h))
                        ]))))));
  }

  /// Section Widget
  Widget _buildHealthELogo() {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 7.h),
        child: CustomTextFormField(
            controller: controller.healthELogoController,
            hintText: "lbl_hospital_name".tr,
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
  Widget _buildCity() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            width: 99.h,
            controller: controller.cityController,
            hintText: "lbl_city".tr,
            hintStyle: CustomTextStyles.bodyLargeGray80001ExtraLight));
  }

  /// Section Widget
  Widget _buildCity1() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CustomDropDown(
                  width: 99.h,
                  hintText: "lbl_state".tr,
                  hintStyle: CustomTextStyles.bodyLargeGray80001ExtraLight,
                  items: controller.doctorHospitalDetailModelObj.value
                      .dropdownItemList.value,
                  onChanged: (value) {
                    controller.onSelected(value);
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomDropDown(
                      width: 99.h,
                      hintText: "lbl_district".tr,
                      hintStyle: CustomTextStyles.bodyLargeGray80001ExtraLight,
                      items: controller.doctorHospitalDetailModelObj.value
                          .dropdownItemList1.value,
                      onChanged: (value) {
                        controller.onSelected1(value);
                      })),
              _buildCity()
            ])));
  }

  /// Section Widget
  Widget _buildAddress() {
    return CustomTextFormField(
        width: 224.h,
        controller: controller.addressController,
        hintText: "lbl_address".tr,
        hintStyle: CustomTextStyles.bodyLargeGray80001Light,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 14.v),
        borderDecoration: TextFormFieldStyleHelper.fillPrimaryTL16);
  }

  /// Section Widget
  Widget _buildAddress1() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 12.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildAddress(),
          Container(
              height: 38.v,
              width: 82.h,
              margin: EdgeInsets.only(top: 7.v, bottom: 4.v),
              child: Stack(alignment: Alignment.topLeft, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpPrimary,
                    height: 38.v,
                    width: 82.h,
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10.h, top: 6.v),
                        child: Text("lbl_pincode".tr,
                            style: CustomTextStyles.bodyLargeGray80001Light)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildOR() {
    return CustomElevatedButton(
        height: 46.v,
        width: 97.h,
        text: "lbl_or".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: theme.textTheme.headlineMedium!);
  }

  /// Section Widget
  Widget _buildSearchForHospital() {
    return Container(
        width: 316.h,
        margin: EdgeInsets.only(left: 12.h, right: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlack900.copyWith(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup), fit: BoxFit.cover)),
        child: Text("msg_search_for_hospital".tr,
            style: CustomTextStyles.bodyLargeTealA70001_1));
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
        },
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildNext1() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, right: 21.h, bottom: 5.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      height: 114.v,
                      width: 324.h,
                      margin: EdgeInsets.only(right: 2.h),
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: 113.v,
                                width: 98.h,
                                decoration: AppDecoration.outlineBlack900,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgRectangle2261,
                                    height: 113.v,
                                    width: 98.h,
                                    radius: BorderRadius.horizontal(
                                        left: Radius.circular(15.h)),
                                    alignment: Alignment.center))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 8.v),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder14),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 2.v),
                                      _buildFavorite(
                                          text: "msg_7_hills_diagnostic".tr),
                                      SizedBox(height: 3.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 95.h),
                                          child: Text("lbl_x_ray_ct_scan".tr,
                                              style: CustomTextStyles
                                                  .bodySmall12)),
                                      SizedBox(height: 7.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 100.h),
                                              child: Row(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTelevisionTealA70001,
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 9.h),
                                                    child: CustomRatingBar(
                                                        initialRating: 4))
                                              ]))),
                                      SizedBox(height: 7.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 14.h),
                                          child: Text("msg_24_2nd_floor".tr,
                                              style:
                                                  theme.textTheme.bodySmall)),
                                      SizedBox(height: 3.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 100.h),
                                          child: _buildClock(
                                              timeText: "msg_10_00_am_2_00".tr,
                                              openText: "lbl_open".tr))
                                    ])))
                      ])),
                  SizedBox(height: 19.v),
                  SizedBox(
                      height: 134.v,
                      width: 326.h,
                      child: Stack(alignment: Alignment.topRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconMaterialAlbum,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 10.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgIconMaterialLocationOn,
                            height: 10.v,
                            width: 7.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 50.v, right: 1.h)),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 134.v,
                                width: 324.h,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                              height: 120.v,
                                              width: 324.h,
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        12.h,
                                                                    vertical:
                                                                        4.v),
                                                            decoration: AppDecoration
                                                                .fillPrimary
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder14),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  _buildFavorite(
                                                                      text: "msg_ultra_radiology"
                                                                          .tr),
                                                                  SizedBox(
                                                                      height:
                                                                          4.v),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          right: 59
                                                                              .h),
                                                                      child: Text(
                                                                          "msg_sonography_ct_scan"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmall12)),
                                                                  SizedBox(
                                                                      height:
                                                                          7.v),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Padding(
                                                                          padding: EdgeInsets.only(left: 100.h),
                                                                          child: Row(children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgTelevisionTealA70001,
                                                                                height: 10.adaptSize,
                                                                                width: 10.adaptSize),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(left: 12.h),
                                                                                child: CustomRatingBar(initialRating: 4))
                                                                          ]))),
                                                                  SizedBox(
                                                                      height:
                                                                          8.v),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          right: 13
                                                                              .h),
                                                                      child: Text(
                                                                          "msg_building_no_3"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall)),
                                                                  SizedBox(
                                                                      height:
                                                                          3.v),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 100
                                                                              .h),
                                                                      child: _buildClock(
                                                                          timeText: "msg_10_00_am_6_00"
                                                                              .tr,
                                                                          openText:
                                                                              "lbl_open".tr)),
                                                                  SizedBox(
                                                                      height:
                                                                          9.v)
                                                                ]))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            height: 113.v,
                                                            width: 98.h,
                                                            decoration:
                                                                BoxDecoration()))
                                                  ]))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle2260,
                                          height: 113.v,
                                          width: 98.h,
                                          radius: BorderRadius.horizontal(
                                              left: Radius.circular(15.h)),
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(top: 7.v)),
                                      _buildNext()
                                    ])))
                      ])),
                  SizedBox(height: 8.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgIconMaterialAlbum,
                      height: 10.adaptSize,
                      width: 10.adaptSize)
                ])));
  }

  /// Section Widget
  Widget _buildIconMaterialAlbum() {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 246.v,
            width: 326.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconMaterialLocationOn,
                  height: 10.v,
                  width: 7.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 50.v, right: 1.h)),
              CustomImageView(
                  imagePath: ImageConstant.imgIconMaterialLocationOn,
                  height: 10.v,
                  width: 7.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 2.h, bottom: 51.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgIconMaterialAlbum,
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 11.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgIconMaterialAlbum,
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 93.v)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(top: 133.v, right: 2.h),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 113.v,
                                width: 98.h,
                                decoration: BoxDecoration()),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 12.v, right: 12.h, bottom: 8.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildFavorite(
                                          text: "msg_mothers_diagnostic".tr),
                                      SizedBox(height: 3.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 19.h),
                                          child: Text(
                                              "msg_2d_doppler_ct_scan".tr,
                                              style: CustomTextStyles
                                                  .bodySmall12)),
                                      SizedBox(height: 9.v),
                                      _buildTelevision(),
                                      SizedBox(height: 7.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgDownload,
                                            height: 10.adaptSize,
                                            width: 10.adaptSize,
                                            margin: EdgeInsets.only(
                                                top: 2.v, bottom: 1.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 9.h),
                                            child: Text("msg_warner_av_near".tr,
                                                style:
                                                    theme.textTheme.bodySmall))
                                      ]),
                                      SizedBox(height: 5.v),
                                      _buildClock1(
                                          timeText: "lbl_10_00_am_2_pm".tr)
                                    ]))
                          ]))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      margin: EdgeInsets.only(right: 2.h, bottom: 133.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 113.v,
                                width: 98.h,
                                decoration: BoxDecoration()),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 12.v, right: 12.h, bottom: 8.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildFavorite(
                                          text: "msg_modern_diagnostic".tr),
                                      SizedBox(height: 3.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 19.h),
                                          child: Text(
                                              "msg_ct_scan_sonography".tr,
                                              style: CustomTextStyles
                                                  .bodySmall12)),
                                      SizedBox(height: 9.v),
                                      _buildTelevision(),
                                      SizedBox(height: 7.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 19.h),
                                          child: Text("msg_kanakia_forest".tr,
                                              style:
                                                  theme.textTheme.bodySmall)),
                                      SizedBox(height: 5.v),
                                      _buildClock1(
                                          timeText: "lbl_10_00_am_2_pm".tr)
                                    ]))
                          ]))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 267.h, right: 14.h, bottom: 8.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildTelevision1(
                            televisionImage: ImageConstant.imgTelevision15x45,
                            openButtonText: "lbl_open".tr),
                        SizedBox(height: 117.v),
                        _buildTelevision1(
                            televisionImage: ImageConstant.imgTelevision15x45,
                            openButtonText: "lbl_open".tr)
                      ])))
            ])));
  }

  /// Common widget
  Widget _buildFavorite({required String text}) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(text,
          style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.redA200)),
      CustomImageView(
          imagePath: ImageConstant.imgFavoriteGray400,
          height: 13.v,
          width: 15.h,
          margin: EdgeInsets.only(left: 38.h, bottom: 4.v))
    ]);
  }

  /// Common widget
  Widget _buildClock({
    required String timeText,
    required String openText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      CustomImageView(
          imagePath: ImageConstant.imgClockTealA70001,
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(timeText,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.gray70001))),
      Spacer(),
      Container(
          width: 45.h,
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v),
          decoration: AppDecoration.fillTealA,
          child: Text(openText,
              style: CustomTextStyles.bodySmallPrimary_1
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Common widget
  Widget _buildTelevision() {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgTelevisionTealA70001,
          height: 10.adaptSize,
          width: 10.adaptSize),
      CustomImageView(
          imagePath: ImageConstant.imgGroup451,
          height: 9.v,
          width: 62.h,
          margin: EdgeInsets.only(left: 9.h))
    ]);
  }

  /// Common widget
  Widget _buildClock1({required String timeText}) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgClockTealA70001,
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(top: 2.v, bottom: 1.v)),
      Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(timeText,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.gray70001)))
    ]);
  }

  /// Common widget
  Widget _buildTelevision1({
    required String televisionImage,
    required String openButtonText,
  }) {
    return SizedBox(
        height: 15.v,
        width: 45.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: televisionImage,
              height: 15.v,
              width: 45.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Text(openButtonText,
                  style: CustomTextStyles.bodySmallPrimary_1
                      .copyWith(color: theme.colorScheme.primary)))
        ]));
  }

  /// Navigates to the onboardFinalScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardFinalScreen,
    );
  }
}
