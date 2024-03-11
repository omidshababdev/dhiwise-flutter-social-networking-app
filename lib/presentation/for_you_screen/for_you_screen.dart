import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'bloc/for_you_bloc.dart';
import 'models/for_you_model.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ForYouBloc>(
      create: (context) => ForYouBloc(ForYouState(
        forYouModelObj: ForYouModel(),
      ))
        ..add(ForYouInitialEvent()),
      child: ForYouScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForYouBloc, ForYouState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgForYou,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 5.v),
                    _buildAppBar(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 185.v,
      leadingWidth: 66.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse9,
        margin: EdgeInsets.only(
          left: 16.h,
          bottom: 135.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          top: 3.v,
          bottom: 134.v,
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
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 148.v),
        ),
      ],
      styleType: Style.bgGradientnameblack90001opacity05nameblack90001opacity05,
    );
  }
}
