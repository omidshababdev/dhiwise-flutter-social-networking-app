import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/profilelist_item_model.dart';

// ignore: must_be_immutable
class ProfilelistItemWidget extends StatelessWidget {
  ProfilelistItemWidget(
    this.profilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfilelistItemModel profilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse211,
                height: 50.adaptSize,
                width: 50.adaptSize,
                radius: BorderRadius.circular(
                  25.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 7.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profilelistItemModelObj.rosalia!,
                      style: CustomTextStyles.titleMedium18,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      profilelistItemModelObj.duration!,
                      style: CustomTextStyles.labelMediumBluegray100,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgGrid,
                height: 6.v,
                width: 30.h,
                margin: EdgeInsets.symmetric(vertical: 22.v),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Container(
            width: 332.h,
            margin: EdgeInsets.only(right: 17.h),
            child: Text(
              profilelistItemModelObj.mostPeopleNever!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargePrimary.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 17.v,
                  width: 19.h,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 3.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    profilelistItemModelObj.zipcode!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 18.v,
                  width: 19.h,
                  margin: EdgeInsets.only(
                    left: 29.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 7.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    profilelistItemModelObj.eightHundred!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsPrimary,
                  height: 25.v,
                  width: 54.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
