import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_icon_button.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_text_form_field.dart';
import 'bloc/live_bloc.dart';
import 'models/live_model.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LiveBloc>(
      create: (context) => LiveBloc(LiveState(
        liveModelObj: LiveModel(),
      ))
        ..add(LiveInitialEvent()),
      child: LiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLive,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                _buildCommentSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 217.v,
      leadingWidth: 66.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse9,
        margin: EdgeInsets.only(
          left: 16.h,
          bottom: 167.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          top: 3.v,
          bottom: 166.v,
        ),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_lucas_anna".tr,
            ),
            SizedBox(height: 5.v),
            AppbarSubtitleThree(
              text: "lbl_35_16".tr,
              margin: EdgeInsets.only(right: 76.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClosePrimary,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 180.v),
        ),
      ],
      styleType: Style.bgGradientnameblack90001opacity05nameblack90001opacity05,
    );
  }

  /// Section Widget
  Widget _buildCommentSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.gradientGrayToBlack,
      child: Column(
        children: [
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 39.v,
                  bottom: 9.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder32,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse945x45,
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            radius: BorderRadius.circular(
                              22.h,
                            ),
                            margin: EdgeInsets.only(
                              top: 4.v,
                              bottom: 5.v,
                            ),
                          ),
                          Container(
                            width: 164.h,
                            margin: EdgeInsets.only(
                              left: 15.h,
                              top: 3.v,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_erlikhe_sweet".tr,
                                    style: CustomTextStyles.bodyMediumffcccbcf,
                                  ),
                                  TextSpan(
                                    text: "msg_can_i_join_with".tr,
                                    style: CustomTextStyles.bodyLargeffcccbcf,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder32,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse845x45,
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            radius: BorderRadius.circular(
                              22.h,
                            ),
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          Container(
                            width: 103.h,
                            margin: EdgeInsets.only(left: 18.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_dong_khuwan".tr,
                                    style: CustomTextStyles.bodyMediumffcccbcf,
                                  ),
                                  TextSpan(
                                    text: "lbl_so_beautiful".tr,
                                    style: CustomTextStyles.bodyLargeffcccbcf,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup9142,
                height: 180.v,
                width: 98.h,
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child:
                    BlocSelector<LiveBloc, LiveState, TextEditingController?>(
                  selector: (state) => state.commentController,
                  builder: (context, commentController) {
                    return CustomTextFormField(
                      controller: commentController,
                      hintText: "lbl_write_a_comment".tr,
                      hintStyle: CustomTextStyles.titleSmallPrimary,
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 16.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.fillGray,
                      fillColor: appTheme.gray600,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(13.h),
                  decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup9143,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
