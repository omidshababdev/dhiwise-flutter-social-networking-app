import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/notificationslist_item_model.dart';

// ignore: must_be_immutable
class NotificationslistItemWidget extends StatelessWidget {
  NotificationslistItemWidget(
    this.notificationslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationslistItemModel notificationslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: notificationslistItemModelObj?.image,
            height: 54.v,
            width: 52.h,
            radius: BorderRadius.circular(
              27.h,
            ),
            margin: EdgeInsets.only(bottom: 26.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
              bottom: 28.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationslistItemModelObj.kevinHasFollowed!,
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
                SizedBox(height: 7.v),
                Text(
                  notificationslistItemModelObj.duration!,
                  style: CustomTextStyles.bodyLargeGray600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
