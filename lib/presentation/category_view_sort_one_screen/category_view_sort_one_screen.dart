import '../category_view_sort_one_screen/widgets/userprofile1_item_widget.dart';
import 'controller/category_view_sort_one_controller.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';
import 'package:sayali_s_application4/widgets/custom_text_form_field.dart';

class CategoryViewSortOneScreen
    extends GetWidget<CategoryViewSortOneController> {
  const CategoryViewSortOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  _buildArrowDown(),
                  _buildDoctorsNearby(),
                  _buildUserProfile(),
                  Opacity(
                      opacity: 0.56,
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 768.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color:
                                      appTheme.black900.withOpacity(0.55))))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 421.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 14.v),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: fs.Svg(
                                                ImageConstant.imgGroup107),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 4.v),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 25.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Text("lbl_filter".tr,
                                                            style: CustomTextStyles
                                                                .bodyLargeGray800),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgClosePrimarycontainer,
                                                            height:
                                                                15.adaptSize,
                                                            width: 15.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 126.h,
                                                                    top: 4.v,
                                                                    bottom:
                                                                        3.v),
                                                            onTap: () {
                                                              onTapImgClose();
                                                            })
                                                      ]))),
                                          SizedBox(height: 19.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 153.h),
                                              child: Row(children: [
                                                CustomTextFormField(
                                                    width: 119.h,
                                                    controller: controller
                                                        .degreeController,
                                                    hintText: "lbl_degree".tr,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    borderDecoration:
                                                        TextFormFieldStyleHelper
                                                            .fillCyan,
                                                    fillColor: appTheme.cyan50),
                                                Spacer(),
                                                Container(
                                                    height: 15.adaptSize,
                                                    width: 15.adaptSize,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 17.v),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgUpload,
                                                              height:
                                                                  15.adaptSize,
                                                              width:
                                                                  15.adaptSize,
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgUpload,
                                                              height:
                                                                  15.adaptSize,
                                                              width:
                                                                  15.adaptSize,
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ])),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 22.h,
                                                        top: 17.v,
                                                        bottom: 16.v),
                                                    child: Text("lbl_mbbs".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallGray800))
                                              ])),
                                          SizedBox(
                                              width: 119.h, child: Divider()),
                                          SizedBox(height: 2.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 26.h, right: 90.h),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 16.v),
                                                        child: Text(
                                                            "lbl_experience".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallGray800)),
                                                    Spacer(),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUpload,
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            bottom: 17.v)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 21.h,
                                                                bottom: 15.v),
                                                        child: Text(
                                                            "lbl_md_orthopaedics"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallGray800))
                                                  ])),
                                          SizedBox(height: 2.v),
                                          Row(children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 12.v, bottom: 2.v),
                                                child: SizedBox(
                                                    width: 119.h,
                                                    child: Divider())),
                                            Container(
                                                width: 54.h,
                                                margin:
                                                    EdgeInsets.only(left: 31.h),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgUpload,
                                                      height: 15.adaptSize,
                                                      width: 15.adaptSize),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 21.h),
                                                      child: Text("lbl_ms".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallGray800))
                                                ]))
                                          ]),
                                          SizedBox(height: 16.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 26.h),
                                              child: Row(children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.v),
                                                    child: Text("lbl_days".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallGray800)),
                                                Container(
                                                    width: 83.h,
                                                    margin: EdgeInsets.only(
                                                        left: 96.h, top: 3.v),
                                                    child: Row(children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgUpload,
                                                          height: 15.adaptSize,
                                                          width: 15.adaptSize),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 21.h),
                                                          child: Text(
                                                              "lbl_d_ortho".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallGray800))
                                                    ]))
                                              ])),
                                          SizedBox(height: 11.v),
                                          SizedBox(
                                              width: 119.h, child: Divider()),
                                          SizedBox(height: 6.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 26.h, right: 157.h),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 11.v),
                                                        child: Text(
                                                            "lbl_time".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallGray800)),
                                                    Spacer(),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUpload,
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            bottom: 11.v)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 21.h,
                                                                bottom: 11.v),
                                                        child: Text(
                                                            "lbl_frcs".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallGray800))
                                                  ])),
                                          SizedBox(height: 8.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 135.h),
                                              child: Row(children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 7.v),
                                                    child: SizedBox(
                                                        width: 119.h,
                                                        child: Divider())),
                                                Spacer(),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgUpload,
                                                    height: 15.adaptSize,
                                                    width: 15.adaptSize),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 21.h),
                                                    child: Text(
                                                        "lbl_ms_ortho".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallGray800))
                                              ])),
                                          SizedBox(height: 10.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 26.h),
                                              child: Text("lbl_location".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallGray800)),
                                          SizedBox(height: 16.v),
                                          SizedBox(
                                              width: 119.h, child: Divider()),
                                          SizedBox(height: 17.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 26.h),
                                              child: Text("lbl_category".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallGray800)),
                                          SizedBox(height: 26.v),
                                          _buildCategoryView()
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 60.v),
                                    child: SizedBox(
                                        width: 374.h, child: Divider()))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 54.v),
                                    child: SizedBox(
                                        width: 374.h, child: Divider()))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 119.h),
                                    child: SizedBox(
                                        height: 305.v,
                                        child: VerticalDivider(
                                            width: 1.h, thickness: 1.v))))
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowDown() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 712.v),
            padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 16.v),
            decoration: AppDecoration.gradientLimeAToTealA70001,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowDownPrimary,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(top: 2.v, bottom: 5.v)),
                  Spacer(flex: 45),
                  Text("msg_orthopaedic_doctors".tr,
                      style: CustomTextStyles.bodyLargePrimary),
                  Spacer(flex: 54),
                  CustomImageView(
                      imagePath: ImageConstant.imgSearchPrimary,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(top: 2.v, bottom: 5.v))
                ])));
  }

  /// Section Widget
  Widget _buildDoctorsNearby() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h, top: 66.v, right: 24.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_47_doctors_nearby".tr,
                            style: CustomTextStyles.bodySmallGray50001),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgIconMaterialSort,
                            height: 10.v,
                            width: 15.h,
                            margin: EdgeInsets.symmetric(vertical: 3.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("lbl_sort".tr,
                                style: CustomTextStyles.bodySmallGray50001)),
                        CustomImageView(
                            imagePath: ImageConstant.imgIconMaterialSort,
                            height: 10.v,
                            width: 15.h,
                            margin: EdgeInsets.only(
                                left: 12.h, top: 3.v, bottom: 3.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("lbl_filter".tr,
                                style: CustomTextStyles.bodySmallGray50001))
                      ])),
              SizedBox(height: 14.v),
              SizedBox(
                  height: 113.v,
                  width: 324.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLinkedin,
                        height: 10.v,
                        width: 7.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 114.h, bottom: 28.v)),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder14),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 113.v,
                                      width: 98.h,
                                      decoration: AppDecoration.outlineBlack900,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle2113,
                                          height: 113.v,
                                          width: 98.h,
                                          radius: BorderRadius.horizontal(
                                              left: Radius.circular(15.h)),
                                          alignment: Alignment.center)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 9.v, right: 12.h, bottom: 7.v),
                                      child: Column(children: [
                                        _buildDrAdnanKhan(
                                            userName: "msg_dr_anand_shinde".tr),
                                        SizedBox(height: 5.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgThumbsUpTealA70001,
                                                      height: 8.v,
                                                      width: 10.h,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 4.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h),
                                                      child: Text(
                                                          "msg_bds_dental_surgeon"
                                                              .tr,
                                                          style:
                                                              CustomTextStyles
                                                                  .bodySmall12))
                                                ])),
                                        SizedBox(height: 8.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTelevisionTealA70001,
                                                  height: 10.adaptSize,
                                                  width: 10.adaptSize),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup451,
                                                  height: 9.v,
                                                  width: 62.h,
                                                  margin: EdgeInsets.only(
                                                      left: 9.h))
                                            ])),
                                        SizedBox(height: 7.v),
                                        Text("msg_tuljai_clinic3".tr,
                                            style: theme.textTheme.bodySmall),
                                        SizedBox(height: 3.v),
                                        SizedBox(
                                            width: 200.h,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClockTealA70001,
                                                      height: 10.adaptSize,
                                                      width: 10.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h),
                                                      child: Text(
                                                          "msg_10_00_am_2_00"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .bodySmall)),
                                                  Spacer(),
                                                  _buildTelevision(
                                                      openButtonText:
                                                          "lbl_open".tr)
                                                ]))
                                      ]))
                                ])))
                  ])),
              SizedBox(height: 20.v),
              SizedBox(
                  height: 113.v,
                  width: 325.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLinkedin,
                        height: 10.v,
                        width: 7.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 117.h, bottom: 26.v)),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 113.v,
                            width: 325.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          margin: EdgeInsets.only(left: 1.h),
                                          decoration: AppDecoration.fillPrimary
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder14),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    height: 113.v,
                                                    width: 98.h,
                                                    decoration:
                                                        BoxDecoration()),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 9.v,
                                                        right: 8.h,
                                                        bottom: 7.v),
                                                    child: Column(children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 4.h),
                                                          child: _buildDrAdnanKhan(
                                                              userName:
                                                                  "lbl_dr_adnan_khan"
                                                                      .tr)),
                                                      SizedBox(height: 6.v),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgThumbsUpTealA70001,
                                                                    height: 8.v,
                                                                    width: 10.h,
                                                                    margin: EdgeInsets.only(
                                                                        top:
                                                                            2.v,
                                                                        bottom:
                                                                            5.v)),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 12
                                                                            .h),
                                                                    child: Text(
                                                                        "lbl_md_cardiology"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodySmall12))
                                                              ])),
                                                      SizedBox(height: 7.v),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgTelevisionTealA70001,
                                                                height: 10
                                                                    .adaptSize,
                                                                width: 10
                                                                    .adaptSize),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup451,
                                                                height: 9.v,
                                                                width: 62.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 12
                                                                            .h))
                                                          ])),
                                                      SizedBox(height: 8.v),
                                                      Text(
                                                          "msg_khan_clinic_beside"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .bodySmall),
                                                      SizedBox(
                                                          width: 204.h,
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgClockTealA70001,
                                                                    height: 10
                                                                        .adaptSize,
                                                                    width: 10
                                                                        .adaptSize,
                                                                    margin: EdgeInsets
                                                                        .only(
                                                                            top:
                                                                                5.v)),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            9.h,
                                                                        top: 3
                                                                            .v),
                                                                    child: Text(
                                                                        "msg_10_00_am_6_00"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodySmall)),
                                                                Spacer(),
                                                                _buildTelevision(
                                                                    openButtonText:
                                                                        "lbl_open"
                                                                            .tr)
                                                              ]))
                                                    ]))
                                              ]))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle2114,
                                      height: 113.v,
                                      width: 98.h,
                                      radius: BorderRadius.horizontal(
                                          left: Radius.circular(15.h)),
                                      alignment: Alignment.centerLeft)
                                ])))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.fromLTRB(25.h, 366.v, 25.h, 23.v),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 22.v);
                },
                itemCount: controller.categoryViewSortOneModelObj.value
                    .userprofile1ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile1ItemModel model = controller
                      .categoryViewSortOneModelObj
                      .value
                      .userprofile1ItemList
                      .value[index];
                  return Userprofile1ItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildCategoryView() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h, right: 18.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
                      child: Text("lbl_clear_all".tr,
                          style: CustomTextStyles.bodySmallRedA200)),
                  CustomElevatedButton(
                      height: 30.v,
                      width: 223.h,
                      text: "lbl_apply".tr,
                      buttonStyle: CustomButtonStyles.fillTealATL15,
                      buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
                      onPressed: () {
                        onTapAPPLY();
                      })
                ])));
  }

  /// Common widget
  Widget _buildDrAdnanKhan({required String userName}) {
    return SizedBox(
        width: 200.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(userName,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.redA200)),
          CustomImageView(
              imagePath: ImageConstant.imgFavoriteGray400,
              height: 13.v,
              width: 15.h,
              margin: EdgeInsets.only(bottom: 3.v))
        ]));
  }

  /// Common widget
  Widget _buildTelevision({required String openButtonText}) {
    return SizedBox(
        height: 15.v,
        width: 45.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTelevisionTealA7000115x45,
              height: 15.v,
              width: 45.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text(openButtonText,
                  style: CustomTextStyles.bodySmallPrimary_1
                      .copyWith(color: theme.colorScheme.primary)))
        ]));
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapImgClose() {
    Get.toNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewCriteriaScreen when the action is triggered.
  onTapAPPLY() {
    Get.toNamed(
      AppRoutes.categoryViewCriteriaScreen,
    );
  }
}
