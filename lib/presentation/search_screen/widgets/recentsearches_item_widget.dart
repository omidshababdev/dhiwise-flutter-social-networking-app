import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_outlined_button.dart';
import '../models/recentsearches_item_model.dart';

// ignore: must_be_immutable
class RecentsearchesItemWidget extends StatelessWidget {
  RecentsearchesItemWidget(
    this.recentsearchesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentsearchesItemModel recentsearchesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: recentsearchesItemModelObj?.kevinAllsrub,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(bottom: 18.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recentsearchesItemModelObj.kevinAllsrub1!,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 5.v),
                Text(
                  recentsearchesItemModelObj.yourEFriendsOn!,
                  style: CustomTextStyles.bodyMediumGray600,
                ),
              ],
            ),
          ),
          Spacer(),
          _buildFollowButton1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowButton1(BuildContext context) {
    return CustomOutlinedButton(
      width: 76.h,
      text: "lbl_follow".tr,
      margin: EdgeInsets.only(
        top: 9.v,
        bottom: 26.v,
      ),
    );
  }
}
