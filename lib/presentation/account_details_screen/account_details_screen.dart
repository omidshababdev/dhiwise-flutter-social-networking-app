import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_icon_button.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_outlined_button.dart';
import 'bloc/account_details_bloc.dart';
import 'models/account_details_model.dart';
import 'models/fortysix_item_model.dart';
import 'models/widget_item_model.dart';
import 'widgets/fortysix_item_widget.dart';
import 'widgets/widget_item_widget.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountDetailsBloc>(
        create: (context) => AccountDetailsBloc(
            AccountDetailsState(accountDetailsModelObj: AccountDetailsModel()))
          ..add(AccountDetailsInitialEvent()),
        child: AccountDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildProfileHeader(context),
                  SizedBox(height: 26.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: _buildAccountDetails(context)))
                ]))));
  }

  /// Section Widget
  Widget _buildProfileHeader(BuildContext context) {
    return SizedBox(
        height: 273.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3809273x414,
              height: 273.v,
              width: 414.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 13.v, right: 16.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomAppBar(
                        height: 24.v,
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
                        ]),
                    SizedBox(height: 161.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                                Text("lbl_rose23".tr,
                                    style: theme.textTheme.bodyMedium)
                              ])),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 9.v),
                          child: CustomIconButton(
                              height: 33.adaptSize,
                              width: 33.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              decoration: IconButtonStyleHelper.outlinePrimary,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgPersonAddAlt1Primary))),
                      CustomOutlinedButton(
                          width: 76.h,
                          text: "lbl_follow".tr,
                          margin: EdgeInsets.only(
                              left: 24.h, top: 9.v, bottom: 9.v),
                          buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary)
                    ])
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildAbout(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_about_me".tr, style: CustomTextStyles.titleLargeBlack900),
          SizedBox(height: 14.v),
          SizedBox(
              width: 380.h,
              child: Text("msg_introduce_my_name".tr,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBluegray700
                      .copyWith(height: 1.50)))
        ]));
  }

  /// Section Widget
  Widget _buildFriends(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text("lbl_friends".tr,
                  style: CustomTextStyles.titleLargeBlack900)),
          SizedBox(height: 13.v),
          SizedBox(
              height: 64.v,
              child: BlocSelector<AccountDetailsBloc, AccountDetailsState,
                      AccountDetailsModel?>(
                  selector: (state) => state.accountDetailsModelObj,
                  builder: (context, accountDetailsModelObj) {
                    return ListView.separated(
                        padding: EdgeInsets.only(left: 2.h),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 16.h);
                        },
                        itemCount:
                            accountDetailsModelObj?.widgetItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          WidgetItemModel model =
                              accountDetailsModelObj?.widgetItemList[index] ??
                                  WidgetItemModel();
                          return WidgetItemWidget(model);
                        });
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildAccountDetails(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(children: [
              Text("lbl_post".tr, style: CustomTextStyles.titleLargeGray500),
              SizedBox(height: 10.v),
              Text("lbl_75".tr,
                  style: CustomTextStyles.titleLargeDeeppurpleA200)
            ]),
            _buildFollowers(context,
                followersText: "lbl_following".tr, zipcodeText: "lbl_3400".tr),
            _buildFollowers(context,
                followersText: "lbl_followers".tr, zipcodeText: "lbl_6500".tr)
          ])),
      SizedBox(height: 20.v),
      Divider(),
      SizedBox(height: 26.v),
      _buildAbout(context),
      SizedBox(height: 20.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text("lbl_photos".tr,
                  style: CustomTextStyles.titleLargeBlack900))),
      SizedBox(height: 12.v),
      SizedBox(
          height: 161.v,
          child: BlocSelector<AccountDetailsBloc, AccountDetailsState,
                  AccountDetailsModel?>(
              selector: (state) => state.accountDetailsModelObj,
              builder: (context, accountDetailsModelObj) {
                return ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount:
                        accountDetailsModelObj?.fortysixItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      FortysixItemModel model =
                          accountDetailsModelObj?.fortysixItemList[index] ??
                              FortysixItemModel();
                      return FortysixItemWidget(model);
                    });
              })),
      SizedBox(height: 21.v),
      _buildFriends(context)
    ]);
  }

  /// Common widget
  Widget _buildFollowers(
    BuildContext context, {
    required String followersText,
    required String zipcodeText,
  }) {
    return Column(children: [
      Text(followersText,
          style: CustomTextStyles.titleLargeGray500
              .copyWith(color: appTheme.gray500)),
      SizedBox(height: 10.v),
      Text(zipcodeText,
          style: CustomTextStyles.titleLargeDeeppurpleA200
              .copyWith(color: appTheme.deepPurpleA200))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }
}
