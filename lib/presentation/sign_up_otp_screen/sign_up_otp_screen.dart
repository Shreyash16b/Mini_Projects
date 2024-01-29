import 'package:flutter/material.dart';
import 'controller/sign_up_otp_controller.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_pin_code_text_field.dart';

class SignUpOtpScreen extends GetWidget<SignUpOtpController> {
  // const SignUpOtpScreen({Key? key}) : super(key: key) {

  //   throw UnimplementedError();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHealthELogo119x375,
                    height: 119.v,
                    width: 375.h,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup14),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(children: [
                        SizedBox(height: 60.v),
                        SizedBox(
                            width: 159.h,
                            child: Text("lbl_enter_the_otp".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.displaySmall)),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.only(left: 17.h, right: 16.h),
                          child: Obx(() {
// Add this assert statement
                            return CustomPinCodeTextField(
                              context: Get.context!,
                              controller: controller.otpController.value,
                              onChanged: (value) {},
                            );
                          }),
                        ),

                        // Padding(
                        //     padding: EdgeInsets.only(left: 17.h, right: 16.h),
                        //     child: Obx(() => CustomPinCodeTextField(
                        //         context: Get.context!,
                        //         controller: controller.otpController.value,
                        //         onChanged: (value) {}))),
                        SizedBox(height: 44.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomElevatedButton(
                                      width: 144.h,
                                      text: "lbl_next".tr,
                                      rightIcon: Container(
                                          margin: EdgeInsets.only(left: 14.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowright,
                                              height: 22.adaptSize,
                                              width: 22.adaptSize)),
                                      onPressed: () {
                                        onTapNext();
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 14.v, bottom: 12.v),
                                      child: Text("lbl_resend_otp".tr,
                                          style: CustomTextStyles
                                              .titleMediumIndigoA700
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))
                                ])),
                        SizedBox(height: 87.v),
                        _buildPathThirtyFour()
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildPathThirtyFour() {
    return SizedBox(
        height: 226.v,
        width: 314.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 5.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup151),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 11.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgPath34,
                            height: 5.v,
                            width: 1.h,
                            margin: EdgeInsets.only(right: 77.h)),
                        SizedBox(height: 8.v),
                        Container(
                            height: 69.v,
                            width: 61.h,
                            margin: EdgeInsets.only(right: 9.h),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                      height: 41.v,
                                      width: 44.h,
                                      margin: EdgeInsets.only(left: 6.h),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCheckmark,
                                                height: 41.v,
                                                width: 44.h,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(children: [
                                                  Column(children: [
                                                    _buildContrast(
                                                        contrastImage:
                                                            ImageConstant
                                                                .imgFavorite,
                                                        userImage: ImageConstant
                                                            .imgFavoriteBlack900),
                                                    SizedBox(
                                                        width: 22.h,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          bottom: 1
                                                                              .v),
                                                                  child: _buildContrast(
                                                                      contrastImage:
                                                                          ImageConstant
                                                                              .imgContrast,
                                                                      userImage:
                                                                          ImageConstant
                                                                              .imgUserBlack900)),
                                                              Container(
                                                                  height: 8.v,
                                                                  width: 13.h,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top: 5
                                                                              .v),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgContrast,
                                                                            height: 8.v,
                                                                            width: 13.h,
                                                                            alignment: Alignment.center),
                                                                        Opacity(
                                                                            opacity:
                                                                                0.25,
                                                                            child: CustomImageView(
                                                                                imagePath: ImageConstant.imgUserBlack900,
                                                                                height: 8.v,
                                                                                width: 13.h,
                                                                                alignment: Alignment.center))
                                                                      ]))
                                                            ]))
                                                  ]),
                                                  Container(
                                                      height: 8.v,
                                                      width: 12.h,
                                                      margin: EdgeInsets.only(
                                                          left: 1.h,
                                                          top: 9.v,
                                                          bottom: 9.v),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgContrast,
                                                                height: 8.v,
                                                                width: 12.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Opacity(
                                                                opacity: 0.25,
                                                                child: CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUserBlack900,
                                                                    height: 8.v,
                                                                    width: 12.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .center))
                                                          ]))
                                                ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      height: 10.adaptSize,
                                      width: 10.adaptSize,
                                      margin: EdgeInsets.only(top: 16.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgFavorite,
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                alignment: Alignment.center),
                                            Opacity(
                                                opacity: 0.25,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFavoriteBlack900,
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize,
                                                    alignment:
                                                        Alignment.center))
                                          ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 8.v,
                                  width: 13.h,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 2.h)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 13.v,
                                  width: 8.h,
                                  alignment: Alignment.topRight,
                                  margin:
                                      EdgeInsets.only(top: 25.v, right: 13.h)),
                              Opacity(
                                  opacity: 0.25,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgUserBlack900,
                                      height: 8.v,
                                      width: 13.h,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 2.h))),
                              Opacity(
                                  opacity: 0.25,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgUserBlack900,
                                      height: 13.v,
                                      width: 8.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                          top: 25.v, right: 13.h))),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                      height: 56.v,
                                      width: 23.h,
                                      margin: EdgeInsets.only(left: 6.h),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCheckmark,
                                                height: 56.v,
                                                width: 23.h,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 1.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgFavorite,
                                                              height: 12.v,
                                                              width: 8.h,
                                                              alignment: Alignment
                                                                  .centerRight),
                                                          SizedBox(height: 2.v),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgContrast,
                                                              height: 11.v,
                                                              width: 10.h),
                                                          SizedBox(height: 6.v),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgContrast,
                                                              height: 8.v,
                                                              width: 13.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          2.h))
                                                        ])))
                                          ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgFavorite,
                                  height: 12.v,
                                  width: 8.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(right: 23.h)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 9.v,
                                  width: 11.h,
                                  alignment: Alignment.topRight,
                                  margin:
                                      EdgeInsets.only(top: 12.v, right: 20.h)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgFavorite,
                                  height: 8.v,
                                  width: 13.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                      left: 21.h, bottom: 28.v)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgFavorite,
                                  height: 11.v,
                                  width: 8.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: 10.v))
                            ])),
                        SizedBox(height: 43.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                height: 60.v,
                                width: 45.h,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: SizedBox(
                                              height: 49.v,
                                              width: 35.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCheckmark,
                                                        height: 49.v,
                                                        width: 35.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 4.h,
                                                                    right: 4.h,
                                                                    bottom:
                                                                        2.v),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgFavorite,
                                                                      height:
                                                                          12.v,
                                                                      width:
                                                                          8.h,
                                                                      margin: EdgeInsets.only(
                                                                          right:
                                                                              6.h)),
                                                                  Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgContrast,
                                                                            height: 8.v,
                                                                            width: 13.h,
                                                                            margin: EdgeInsets.only(bottom: 7.v)),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgFavorite,
                                                                            height: 12.v,
                                                                            width: 8.h,
                                                                            margin: EdgeInsets.only(top: 3.v))
                                                                      ]),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgFavorite,
                                                                      height:
                                                                          8.v,
                                                                      width:
                                                                          13.h,
                                                                      margin: EdgeInsets.only(
                                                                          right:
                                                                              2.h))
                                                                ])))
                                                  ]))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgContrast,
                                          height: 11.v,
                                          width: 9.h,
                                          alignment: Alignment.topLeft),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFavorite,
                                          height: 13.v,
                                          width: 8.h,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(
                                              left: 12.h, top: 4.v)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFavorite,
                                          height: 8.v,
                                          width: 13.h,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(
                                              left: 6.h, top: 14.v))
                                    ])))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 226.v,
                  width: 214.h,
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgPath35),
                          fit: BoxFit.cover)),
                  child: Stack(alignment: Alignment.topRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUserBlue50,
                        height: 73.v,
                        width: 27.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 75.h, bottom: 67.v)),
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            height: 34.v,
                            width: 37.h,
                            margin: EdgeInsets.only(top: 38.v, right: 53.h),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgUserPink100,
                                  height: 34.v,
                                  width: 37.h,
                                  alignment: Alignment.center),
                              Opacity(
                                  opacity: 0.1,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUserBlack90022x28,
                                      height: 22.v,
                                      width: 28.h,
                                      alignment: Alignment.topLeft))
                            ]))),
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            height: 47.adaptSize,
                            width: 47.adaptSize,
                            margin: EdgeInsets.only(top: 12.v, right: 61.h),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgClose,
                                      height: 47.adaptSize,
                                      width: 47.adaptSize,
                                      alignment: Alignment.center),
                                  Opacity(
                                      opacity: 0.1,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgEye,
                                          height: 33.v,
                                          width: 47.h,
                                          alignment: Alignment.topCenter))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgTelevisionBlueGray600,
                        height: 29.v,
                        width: 36.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 65.v, right: 57.h)),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUserBlack90024x20,
                            height: 24.v,
                            width: 20.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 49.v, right: 55.h))),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUserBlack90029x15,
                            height: 29.v,
                            width: 15.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 66.v, right: 69.h))),
                    CustomImageView(
                        imagePath: ImageConstant.imgUserTeal50,
                        height: 29.v,
                        width: 15.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 65.v, right: 69.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgMaximize,
                        height: 24.v,
                        width: 21.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 48.v, right: 54.h)),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUserBlack90013x15,
                            height: 13.v,
                            width: 15.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 62.v, right: 78.h))),
                    CustomImageView(
                        imagePath: ImageConstant.imgTelevision,
                        height: 13.v,
                        width: 15.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 61.v, right: 78.h)),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgPath47,
                            height: 28.v,
                            width: 36.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 66.v, right: 57.h))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            width: 118.h,
                            margin: EdgeInsets.only(
                                left: 86.h, top: 61.v, right: 6.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.h, vertical: 31.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgPath48),
                                    fit: BoxFit.cover)),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Opacity(
                                      opacity: 0.1,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgContrastBlack900,
                                          height: 9.v,
                                          width: 8.h,
                                          margin: EdgeInsets.only(
                                              top: 38.v, bottom: 54.v))),
                                  Opacity(
                                      opacity: 0.1,
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMaximizeBlack90014x9,
                                          height: 36.v,
                                          width: 13.h,
                                          margin: EdgeInsets.only(
                                              left: 3.h, top: 66.v))),
                                  Container(
                                      height: 53.v,
                                      width: 41.h,
                                      margin: EdgeInsets.only(
                                          left: 7.h, top: 41.v, bottom: 7.v),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Opacity(
                                                opacity: 0.1,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSettingsBlack900,
                                                    height: 39.v,
                                                    width: 15.h,
                                                    alignment:
                                                        Alignment.topRight,
                                                    margin: EdgeInsets.only(
                                                        right: 10.h))),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgContrastPink100,
                                                height: 21.v,
                                                width: 41.h,
                                                alignment:
                                                    Alignment.bottomCenter)
                                          ]))
                                ]))),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUserBlack90032x29,
                            height: 32.v,
                            width: 29.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 48.v, right: 42.h))),
                    CustomImageView(
                        imagePath: ImageConstant.imgSettingsBlue50,
                        height: 32.v,
                        width: 29.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 46.v, right: 42.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgUserGray600,
                        height: 42.v,
                        width: 56.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 2.v, right: 57.h)),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            height: 34.v,
                            width: 27.h,
                            margin: EdgeInsets.only(left: 72.h, bottom: 61.v),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgTelevisionBlue50,
                                  height: 34.v,
                                  width: 27.h,
                                  alignment: Alignment.center),
                              Opacity(
                                  opacity: 0.1,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgEllipse1,
                                      height: 10.v,
                                      width: 11.h,
                                      alignment: Alignment.topLeft,
                                      margin:
                                          EdgeInsets.only(left: 6.h, top: 6.v)))
                            ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgUserPink10038x20,
                        height: 38.v,
                        width: 20.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 70.h, bottom: 81.v)),
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 75.h, top: 44.v, right: 57.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.h, vertical: 16.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup162),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgPath60,
                                      height: 12.v,
                                      width: 5.h,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 20.h)),
                                  SizedBox(height: 43.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle41,
                                      height: 4.v,
                                      width: 1.h),
                                  SizedBox(height: 9.v)
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgPath61,
                        height: 17.v,
                        width: 14.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 44.v, right: 57.h)),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            margin: EdgeInsets.only(left: 75.h, right: 125.h),
                            decoration: AppDecoration.fillIndigoA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Container(
                                height: 9.adaptSize,
                                width: 9.adaptSize,
                                decoration: BoxDecoration(
                                    color: appTheme.blue50,
                                    borderRadius:
                                        BorderRadius.circular(4.h))))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 80.h, top: 60.v, right: 71.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 17.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup165),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20.v),
                                  Opacity(
                                      opacity: 0.1,
                                      child: SizedBox(
                                          height: 32.v,
                                          child: VerticalDivider(
                                              width: 3.h,
                                              thickness: 3.v,
                                              color: appTheme.black900
                                                  .withOpacity(0.39))))
                                ]))),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFavoriteBlack90024x55,
                            height: 24.v,
                            width: 55.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 20.v, right: 57.h))),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgPath65,
                            height: 102.v,
                            width: 57.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 1.h, bottom: 41.v))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            margin: EdgeInsets.only(left: 154.h, bottom: 41.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 9.h, vertical: 19.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup163),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 40.v),
                                  Opacity(
                                      opacity: 0.1,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgPath67,
                                          height: 2.v,
                                          width: 12.h)),
                                  SizedBox(height: 2.v),
                                  Opacity(
                                      opacity: 0.1,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgPath68,
                                          height: 2.v,
                                          width: 13.h)),
                                  SizedBox(height: 9.v),
                                  Opacity(
                                      opacity: 0.1,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgPath67,
                                          height: 5.v,
                                          width: 10.h))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgCloseRed1000131x28,
                        height: 31.v,
                        width: 28.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 28.h)),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgMaximizeBlack900,
                            height: 14.v,
                            width: 28.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 28.h, top: 100.v))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            height: 42.adaptSize,
                            width: 42.adaptSize,
                            margin: EdgeInsets.only(left: 22.h, top: 71.v),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgCloseRed10001,
                                  height: 42.adaptSize,
                                  width: 42.adaptSize,
                                  alignment: Alignment.center),
                              Opacity(
                                  opacity: 0.1,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgEye,
                                      height: 40.v,
                                      width: 37.h,
                                      alignment: Alignment.topLeft))
                            ]))),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 22.v,
                            width: 7.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 75.h))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            height: 101.v,
                            width: 76.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 43.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgPath75),
                                    fit: BoxFit.cover)),
                            child: Opacity(
                                opacity: 0.1,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSettingsBlack9008x12,
                                    height: 8.v,
                                    width: 12.h,
                                    alignment: Alignment.bottomLeft)))),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUserBlack90021x36,
                            height: 21.v,
                            width: 36.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 25.h, bottom: 87.v))),
                    CustomImageView(
                        imagePath: ImageConstant.imgMaximizePink300,
                        height: 21.v,
                        width: 36.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 25.h, bottom: 87.v)),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgMaximizeBlack90014x9,
                            height: 14.v,
                            width: 9.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 46.h, bottom: 76.v))),
                    CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 23.v,
                        width: 29.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 54.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgPath83,
                        height: 130.v,
                        width: 62.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 33.v)),
                    Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUserBlack90073x50,
                            height: 73.v,
                            width: 50.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 20.h, bottom: 11.v))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            height: 73.v,
                            width: 50.h,
                            margin: EdgeInsets.only(left: 21.h, bottom: 13.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 16.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup166),
                                    fit: BoxFit.cover)),
                            child: Opacity(
                                opacity: 0.1,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMaximizeBlack90014x9,
                                    height: 12.v,
                                    width: 14.h,
                                    alignment: Alignment.topLeft)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgUserPink300,
                        height: 24.v,
                        width: 30.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 41.h, bottom: 13.v)),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            height: 124.v,
                            width: 62.h,
                            margin: EdgeInsets.only(bottom: 33.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.h, vertical: 33.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup408),
                                    fit: BoxFit.cover)),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Opacity(
                                  opacity: 0.1,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgMaximizeBlack900,
                                      height: 9.v,
                                      width: 8.h,
                                      alignment: Alignment.topLeft)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSettingsPink300,
                                  height: 9.v,
                                  width: 8.h,
                                  alignment: Alignment.topLeft)
                            ])))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildContrast({
    required String contrastImage,
    required String userImage,
  }) {
    return SizedBox(
        height: 13.v,
        width: 8.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: contrastImage,
              height: 13.v,
              width: 8.h,
              alignment: Alignment.center),
          Opacity(
              opacity: 0.25,
              child: CustomImageView(
                  imagePath: userImage,
                  height: 13.v,
                  width: 8.h,
                  alignment: Alignment.center))
        ]));
  }

  /// Navigates to the signUpSuccessScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.signUpSuccessScreen,
    );
  }
}

class Key {}
