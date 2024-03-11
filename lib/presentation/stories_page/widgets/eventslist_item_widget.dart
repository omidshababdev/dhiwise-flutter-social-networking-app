import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_elevated_button.dart';
import '../models/eventslist_item_model.dart';

// ignore: must_be_immutable
class EventslistItemWidget extends StatelessWidget {
  EventslistItemWidget(
    this.eventslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EventslistItemModel eventslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 144.v,
              width: 147.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: eventslistItemModelObj?.lIVEWeTheFest,
                    height: 144.v,
                    width: 147.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomElevatedButton(
                    height: 20.v,
                    width: 54.h,
                    text: "lbl_live".tr,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 12.v,
                    ),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup9027,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                    ),
                    buttonTextStyle: CustomTextStyles.labelMediumPrimary,
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: eventslistItemModelObj?.blueLoyalParty,
              height: 144.v,
              width: 147.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  eventslistItemModelObj.lIVEWeTheFest1!,
                  style: CustomTextStyles.titleSmallBlack90001,
                ),
                SizedBox(height: 6.v),
                Text(
                  eventslistItemModelObj.price!,
                  style: CustomTextStyles.labelLargeBluegray400,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventslistItemModelObj.blueLoyalParty1!,
                  style: CustomTextStyles.titleSmallBlack90001,
                ),
                SizedBox(height: 5.v),
                Text(
                  eventslistItemModelObj.price1!,
                  style: CustomTextStyles.labelLargeBluegray400,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
