import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_icon_button.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_outlined_button.dart';
import 'bloc/account_view_bloc.dart';
import 'models/account_view_model.dart';

class AccountViewScreen extends StatelessWidget {
  const AccountViewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountViewBloc>(
        create: (context) => AccountViewBloc(
            AccountViewState(accountViewModelObj: AccountViewModel()))
          ..add(AccountViewInitialEvent()),
        child: AccountViewScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountViewBloc, AccountViewState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: SizedBox(
                      height: 852.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                                height: 645.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle3809,
                                          height: 645.v,
                                          width: 414.h,
                                          alignment: Alignment.center),
                                      _buildElevenStack(context)
                                    ]))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                margin: EdgeInsets.only(top: 71.v),
                                decoration: AppDecoration
                                    .gradientOnPrimaryContainerToBlueGray,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 89.v),
                                      CustomIconButton(
                                          height: 130.adaptSize,
                                          width: 130.adaptSize,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup)),
                                      Spacer(),
                                      _buildAccountDetailsColumn(context)
                                    ])))
                      ])))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildElevenStack(BuildContext context) {
    return CustomAppBar(
        height: 37.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowBack(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildFollowDetailsRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse11,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(25.h)),
          Padding(
              padding: EdgeInsets.only(left: 24.h, top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_rosalia".tr,
                        style: CustomTextStyles.titleLargePrimary),
                    SizedBox(height: 6.v),
                    Text("lbl_rose23".tr, style: theme.textTheme.bodyMedium)
                  ])),
          Spacer(),
          CustomOutlinedButton(
              width: 76.h,
              text: "lbl_follow".tr,
              margin: EdgeInsets.symmetric(vertical: 9.v),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
              buttonTextStyle: CustomTextStyles.titleSmallPrimary)
        ]);
  }

  /// Section Widget
  Widget _buildAccountCountsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 7.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("lbl_post".tr, style: CustomTextStyles.titleLargeGray200),
            SizedBox(height: 10.v),
            Text("lbl_75".tr, style: CustomTextStyles.titleLargePrimary)
          ]),
          _buildFollowersColumn(context,
              followersText: "lbl_following".tr, zipcodeText: "lbl_3400".tr),
          _buildFollowersColumn(context,
              followersText: "lbl_followers".tr, zipcodeText: "lbl_6500".tr)
        ]));
  }

  /// Section Widget
  Widget _buildActionRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              onTap: () {
                onTapBtnPersonAddAltOne(context);
              },
              child:
                  CustomImageView(imagePath: ImageConstant.imgPersonAddAlt1)),
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(imagePath: ImageConstant.imgGroup9036)),
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(imagePath: ImageConstant.imgCall))
        ]));
  }

  /// Section Widget
  Widget _buildAccountDetailsColumn(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapAccountDetailsColumn(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 33.v),
            decoration: AppDecoration.white
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              _buildFollowDetailsRow(context),
              SizedBox(height: 30.v),
              _buildAccountCountsRow(context),
              SizedBox(height: 26.v),
              _buildActionRow(context),
              SizedBox(height: 24.v)
            ])));
  }

  /// Common widget
  Widget _buildFollowersColumn(
    BuildContext context, {
    required String followersText,
    required String zipcodeText,
  }) {
    return Column(children: [
      Text(followersText,
          style: CustomTextStyles.titleLargeGray200
              .copyWith(color: appTheme.gray200)),
      SizedBox(height: 10.v),
      Text(zipcodeText,
          style: CustomTextStyles.titleLargePrimary
              .copyWith(color: theme.colorScheme.primary))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the accountDetailsScreen when the action is triggered.
  onTapAccountDetailsColumn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.accountDetailsScreen,
    );
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapBtnPersonAddAltOne(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launchUrlString(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
