import 'controller/welcome_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class WelcomeOneScreen extends GetWidget<WelcomeOneController> {
  const WelcomeOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 779.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(left: 10.h),
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  decoration: AppDecoration.fillGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHealthELogo,
                    height: 119.v,
                    width: 365.h,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 649.v,
                  width: 368.h,
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup402,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPath35,
                        height: 226.v,
                        width: 214.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPath48,
                        height: 165.v,
                        width: 118.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 60.h),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 22.v,
                          width: 7.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 132.h),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPath75,
                        height: 101.v,
                        width: 76.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 61.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 23.v,
                        width: 29.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 111.h),
                      ),
                      _buildUser(),
                    ],
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
  Widget _buildUser() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 205.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_easily_find".tr,
                        style: CustomTextStyles.displaySmallffffffff,
                      ),
                      TextSpan(
                        text: "lbl_doctors".tr,
                        style: CustomTextStyles.displaySmallffffffff_1,
                      ),
                      TextSpan(
                        text: "msg_for_your_illness".tr,
                        style: CustomTextStyles.displaySmallffffffff,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 50.v),
            Container(
              height: 88.v,
              width: 144.h,
              margin: EdgeInsets.only(left: 45.h),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_login_as".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    width: 144.h,
                    text: "lbl_user".tr,
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 24.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowright,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                      ),
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            CustomElevatedButton(
              width: 144.h,
              text: "lbl_doctor".tr,
              margin: EdgeInsets.only(left: 48.h),
              rightIcon: Container(
                margin: EdgeInsets.only(left: 10.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowright,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
              ),
            ),
            SizedBox(height: 14.v),
            CustomElevatedButton(
              width: 144.h,
              text: "lbl_hospital".tr,
              margin: EdgeInsets.only(left: 49.h),
              rightIcon: Container(
                margin: EdgeInsets.only(left: 3.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowright,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
              ),
            ),
            SizedBox(height: 13.v),
            SizedBox(
              height: 213.v,
              width: 314.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUserGray600,
                    height: 42.v,
                    width: 56.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 102.h),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 5.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup151,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 11.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgPath34,
                            height: 5.v,
                            width: 1.h,
                            margin: EdgeInsets.only(right: 77.h),
                          ),
                          SizedBox(height: 8.v),
                          Container(
                            height: 69.v,
                            width: 61.h,
                            margin: EdgeInsets.only(right: 9.h),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
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
                                          imagePath: ImageConstant.imgCheckmark,
                                          height: 41.v,
                                          width: 44.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  _buildContrast(
                                                    contrastImage: ImageConstant
                                                        .imgFavorite,
                                                    userImage: ImageConstant
                                                        .imgFavoriteBlack900,
                                                  ),
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
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 1.v),
                                                          child: _buildContrast(
                                                            contrastImage:
                                                                ImageConstant
                                                                    .imgContrast,
                                                            userImage: ImageConstant
                                                                .imgUserBlack900,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 8.v,
                                                          width: 13.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 5.v),
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgContrast,
                                                                height: 8.v,
                                                                width: 13.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                              Opacity(
                                                                opacity: 0.25,
                                                                child:
                                                                    CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgUserBlack900,
                                                                  height: 8.v,
                                                                  width: 13.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                height: 8.v,
                                                width: 12.h,
                                                margin: EdgeInsets.only(
                                                  left: 1.h,
                                                  top: 9.v,
                                                  bottom: 9.v,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgContrast,
                                                      height: 8.v,
                                                      width: 12.h,
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Opacity(
                                                      opacity: 0.25,
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUserBlack900,
                                                        height: 8.v,
                                                        width: 12.h,
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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
                                          imagePath: ImageConstant.imgFavorite,
                                          height: 10.adaptSize,
                                          width: 10.adaptSize,
                                          alignment: Alignment.center,
                                        ),
                                        Opacity(
                                          opacity: 0.25,
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFavoriteBlack900,
                                            height: 10.adaptSize,
                                            width: 10.adaptSize,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 8.v,
                                  width: 13.h,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 2.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 13.v,
                                  width: 8.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 25.v,
                                    right: 13.h,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.25,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgUserBlack900,
                                    height: 8.v,
                                    width: 13.h,
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(right: 2.h),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.25,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgUserBlack900,
                                    height: 13.v,
                                    width: 8.h,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      top: 25.v,
                                      right: 13.h,
                                    ),
                                  ),
                                ),
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
                                          imagePath: ImageConstant.imgCheckmark,
                                          height: 56.v,
                                          width: 23.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1.h),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgFavorite,
                                                  height: 12.v,
                                                  width: 8.h,
                                                  alignment:
                                                      Alignment.centerRight,
                                                ),
                                                SizedBox(height: 2.v),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgContrast,
                                                  height: 11.v,
                                                  width: 10.h,
                                                ),
                                                SizedBox(height: 6.v),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgContrast,
                                                  height: 8.v,
                                                  width: 13.h,
                                                  margin: EdgeInsets.only(
                                                      left: 2.h),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFavorite,
                                  height: 12.v,
                                  width: 8.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(right: 23.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 9.v,
                                  width: 11.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 12.v,
                                    right: 20.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFavorite,
                                  height: 8.v,
                                  width: 13.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 21.h,
                                    bottom: 28.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFavorite,
                                  height: 11.v,
                                  width: 8.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: 10.v),
                                ),
                              ],
                            ),
                          ),
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
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCheckmark,
                                            height: 49.v,
                                            width: 35.h,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 4.h,
                                                right: 4.h,
                                                bottom: 2.v,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFavorite,
                                                    height: 12.v,
                                                    width: 8.h,
                                                    margin: EdgeInsets.only(
                                                        right: 6.h),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgContrast,
                                                        height: 8.v,
                                                        width: 13.h,
                                                        margin: EdgeInsets.only(
                                                            bottom: 7.v),
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgFavorite,
                                                        height: 12.v,
                                                        width: 8.h,
                                                        margin: EdgeInsets.only(
                                                            top: 3.v),
                                                      ),
                                                    ],
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFavorite,
                                                    height: 8.v,
                                                    width: 13.h,
                                                    margin: EdgeInsets.only(
                                                        right: 2.h),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgContrast,
                                    height: 11.v,
                                    width: 9.h,
                                    alignment: Alignment.topLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFavorite,
                                    height: 13.v,
                                    width: 8.h,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(
                                      left: 12.h,
                                      top: 4.v,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFavorite,
                                    height: 8.v,
                                    width: 13.h,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(
                                      left: 6.h,
                                      top: 14.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 47.adaptSize,
                      width: 47.adaptSize,
                      margin: EdgeInsets.only(
                        top: 10.v,
                        right: 106.h,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgClose,
                            height: 47.adaptSize,
                            width: 47.adaptSize,
                            alignment: Alignment.center,
                          ),
                          Opacity(
                            opacity: 0.1,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
                              height: 33.v,
                              width: 47.h,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFavoriteBlack90024x55,
                      height: 24.v,
                      width: 55.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 21.v),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 34.v,
                      width: 37.h,
                      margin: EdgeInsets.only(
                        top: 36.v,
                        right: 98.h,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUserPink100,
                            height: 34.v,
                            width: 37.h,
                            alignment: Alignment.center,
                          ),
                          Opacity(
                            opacity: 0.1,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUserBlack90022x28,
                              height: 22.v,
                              width: 28.h,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath61,
                    height: 17.v,
                    width: 14.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 42.v,
                      right: 103.h,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 132.h,
                        top: 42.v,
                        right: 102.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 16.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup162,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPath60,
                            height: 12.v,
                            width: 5.h,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 20.h),
                          ),
                          SizedBox(height: 43.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle41,
                            height: 4.v,
                            width: 1.h,
                          ),
                          SizedBox(height: 9.v),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlue50,
                    height: 32.v,
                    width: 29.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 44.v,
                      right: 88.h,
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlack90032x29,
                      height: 32.v,
                      width: 29.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 45.v,
                        right: 88.h,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaximize,
                    height: 24.v,
                    width: 21.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 46.v,
                      right: 100.h,
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlack90024x20,
                      height: 24.v,
                      width: 20.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 47.v,
                        right: 100.h,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 137.h,
                        top: 58.v,
                        right: 116.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 19.h,
                        vertical: 17.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup165,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                                color: appTheme.black900.withOpacity(0.39),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 13.v,
                    width: 15.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 59.v,
                      right: 124.h,
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlack90013x15,
                      height: 13.v,
                      width: 15.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 59.v,
                        right: 123.h,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath83,
                    height: 130.v,
                    width: 62.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 57.h,
                      bottom: 22.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionBlueGray600,
                    height: 29.v,
                    width: 36.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 63.v,
                      right: 103.h,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserTeal50,
                    height: 29.v,
                    width: 15.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 63.v,
                      right: 115.h,
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlack90029x15,
                      height: 29.v,
                      width: 15.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 63.v,
                        right: 115.h,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPath47,
                      height: 28.v,
                      width: 36.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 64.v,
                        right: 103.h,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 124.v,
                      width: 62.h,
                      margin: EdgeInsets.only(
                        left: 57.h,
                        bottom: 22.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 13.h,
                        vertical: 33.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup408,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Opacity(
                            opacity: 0.1,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgMaximizeBlack900,
                              height: 9.v,
                              width: 8.h,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettingsPink300,
                            height: 9.v,
                            width: 8.h,
                            alignment: Alignment.topLeft,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      margin: EdgeInsets.only(
                        left: 79.h,
                        top: 69.v,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCloseRed10001,
                            height: 42.adaptSize,
                            width: 42.adaptSize,
                            alignment: Alignment.center,
                          ),
                          Opacity(
                            opacity: 0.1,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
                              height: 40.v,
                              width: 37.h,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPath65,
                      height: 102.v,
                      width: 57.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 46.h,
                        bottom: 30.v,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 210.h,
                        right: 45.h,
                        bottom: 30.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 19.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup163,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                              width: 12.h,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Opacity(
                            opacity: 0.1,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPath68,
                              height: 2.v,
                              width: 13.h,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Opacity(
                            opacity: 0.1,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPath67,
                              height: 5.v,
                              width: 10.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserBlue50,
                    height: 73.v,
                    width: 27.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 132.h,
                      bottom: 56.v,
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMaximizeBlack900,
                      height: 14.v,
                      width: 28.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 84.h),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCloseRed1000131x28,
                    height: 31.v,
                    width: 28.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 84.h,
                      bottom: 83.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserPink10038x20,
                    height: 38.v,
                    width: 20.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 127.h,
                      bottom: 70.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 132.h,
                        right: 170.h,
                      ),
                      decoration: AppDecoration.fillIndigoA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Container(
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.blue50,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaximizePink300,
                    height: 21.v,
                    width: 36.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 81.h,
                      bottom: 77.v,
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlack90021x36,
                      height: 21.v,
                      width: 36.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 81.h,
                        bottom: 76.v,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 34.v,
                      width: 27.h,
                      margin: EdgeInsets.only(
                        left: 129.h,
                        bottom: 50.v,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTelevisionBlue50,
                            height: 34.v,
                            width: 27.h,
                            alignment: Alignment.center,
                          ),
                          Opacity(
                            opacity: 0.1,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEllipse1,
                              height: 10.v,
                              width: 11.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 6.v,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgContrastBlack900,
                      height: 9.v,
                      width: 8.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 75.v),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsBlack900,
                      height: 39.v,
                      width: 15.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 102.h,
                        bottom: 41.v,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMaximizeBlack90014x9,
                      height: 14.v,
                      width: 9.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 102.h,
                        bottom: 65.v,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 73.v,
                      width: 50.h,
                      margin: EdgeInsets.only(
                        left: 78.h,
                        bottom: 2.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 16.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup166,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMaximizeBlack90014x9,
                          height: 12.v,
                          width: 14.h,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlack90073x50,
                      height: 73.v,
                      width: 50.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 77.h,
                        bottom: 1.v,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMaximizeBlack90014x9,
                      height: 36.v,
                      width: 13.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 140.h,
                        bottom: 20.v,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgContrastPink100,
                    height: 21.v,
                    width: 41.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                      right: 92.h,
                      bottom: 27.v,
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsBlack9008x12,
                      height: 8.v,
                      width: 12.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 76.h,
                        bottom: 32.v,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserPink300,
                    height: 24.v,
                    width: 30.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 98.h,
                      bottom: 2.v,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildContrast({
    required String contrastImage,
    required String userImage,
  }) {
    return SizedBox(
      height: 13.v,
      width: 8.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: contrastImage,
            height: 13.v,
            width: 8.h,
            alignment: Alignment.center,
          ),
          Opacity(
            opacity: 0.25,
            child: CustomImageView(
              imagePath: userImage,
              height: 13.v,
              width: 8.h,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
