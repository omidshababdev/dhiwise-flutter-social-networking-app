import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_elevated_button.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_icon_button.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_text_form_field.dart';
import 'bloc/page_view_bloc.dart';
import 'models/conversions_item_model.dart';
import 'models/page_view_model.dart';
import 'widgets/conversions_item_widget.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PageViewBloc>(
        create: (context) =>
            PageViewBloc(PageViewState(pageViewModelObj: PageViewModel()))
              ..add(PageViewInitialEvent()),
        child: PageViewScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPageView),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 13.v),
                        decoration: AppDecoration
                            .gradientOnPrimaryContainerToBlueGray
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder15),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          _buildAppBar(context),
                          Spacer(),
                          SizedBox(height: 26.v),
                          _buildStreamDetails(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 24.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBack,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowBack(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgQuestion,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGrid,
              margin: EdgeInsets.only(left: 24.h, right: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildPostDescription(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomElevatedButton(
          height: 28.v,
          width: 71.h,
          text: "lbl_4_6".tr,
          buttonStyle: CustomButtonStyles.fillDeepPurpleATL14,
          buttonTextStyle: CustomTextStyles.titleSmallPrimary),
      SizedBox(height: 22.v),
      Container(
          width: 300.h,
          margin: EdgeInsets.only(right: 82.h),
          child: Text("msg_haliford_luxury_hotel".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displayMedium)),
      SizedBox(height: 23.v),
      SizedBox(
          width: 381.h,
          child: Text("msg_halford_hotel_is".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.50)))
    ]);
  }

  /// Section Widget
  Widget _buildConversions(BuildContext context) {
    return SizedBox(
        height: 40.v,
        child: BlocSelector<PageViewBloc, PageViewState, PageViewModel?>(
            selector: (state) => state.pageViewModelObj,
            builder: (context, pageViewModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 13.h);
                  },
                  itemCount: pageViewModelObj?.conversionsItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ConversionsItemModel model =
                        pageViewModelObj?.conversionsItemList[index] ??
                            ConversionsItemModel();
                    return ConversionsItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildStreamDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          _buildPostDescription(context),
          SizedBox(height: 98.v),
          _buildConversions(context),
          SizedBox(height: 40.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: BlocSelector<PageViewBloc, PageViewState,
                        TextEditingController?>(
                    selector: (state) => state.commentController,
                    builder: (context, commentController) {
                      return CustomTextFormField(
                          controller: commentController,
                          hintText: "lbl_write_a_comment".tr,
                          hintStyle: CustomTextStyles.titleSmallPrimary,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 16.v),
                          borderDecoration: TextFormFieldStyleHelper.fillGray,
                          fillColor: appTheme.gray600);
                    })),
            Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: CustomIconButton(
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    padding: EdgeInsets.all(13.h),
                    decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgGroup9143)))
          ])
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }
}
