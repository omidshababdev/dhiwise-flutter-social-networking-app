import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_icon_button.dart';
import 'bloc/detailed_profile_bloc.dart';
import 'models/detailed_profile_model.dart';

class DetailedProfileScreen extends StatelessWidget {
  const DetailedProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailedProfileBloc>(
        create: (context) => DetailedProfileBloc(DetailedProfileState(
            detailedProfileModelObj: DetailedProfileModel()))
          ..add(DetailedProfileInitialEvent()),
        child: DetailedProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailedProfileBloc, DetailedProfileState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 21.v),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_profile".tr,
                                style: theme.textTheme.headlineLarge))),
                    SizedBox(height: 21.v),
                    Divider(),
                    SizedBox(height: 30.v),
                    SizedBox(
                        height: 126.v,
                        width: 124.h,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse14120x120,
                              height: 120.adaptSize,
                              width: 120.adaptSize,
                              radius: BorderRadius.circular(60.h),
                              alignment: Alignment.topLeft),
                          CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgCloseDeepPurpleA200))
                        ])),
                    SizedBox(height: 46.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: _buildEmailRow(context,
                            email: "lbl_username".tr,
                            email1: "lbl_rosalia".tr)),
                    SizedBox(height: 29.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: _buildEmailRow(context,
                            email: "lbl_email".tr,
                            email1: "lbl_xyz_gmail_com".tr)),
                    SizedBox(height: 28.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: _buildEmailRow(context,
                            email: "lbl_phone".tr,
                            email1: "msg_12_3456_789_000".tr)),
                    SizedBox(height: 37.v),
                    Divider(),
                    SizedBox(height: 32.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: _buildEmailRow(context,
                            email: "lbl_gender".tr, email1: "lbl_female".tr)),
                    SizedBox(height: 29.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: _buildEmailRow(context,
                            email: "lbl_date_of_birth2".tr,
                            email1: "lbl_21_08_1992".tr)),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        actions: [
          AppbarSubtitleTwo(
              text: "lbl_done".tr,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 14.v))
        ]);
  }

  /// Common widget
  Widget _buildEmailRow(
    BuildContext context, {
    required String email,
    required String email1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(email,
              style: CustomTextStyles.bodyLarge18
                  .copyWith(color: appTheme.blueGray400))),
      Text(email1,
          style: CustomTextStyles.bodyLargeBlack90001
              .copyWith(color: appTheme.black90001))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }
}
