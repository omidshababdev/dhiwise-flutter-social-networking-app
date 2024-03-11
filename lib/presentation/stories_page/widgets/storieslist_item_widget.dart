import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/storieslist_item_model.dart';

// ignore: must_be_immutable
class StorieslistItemWidget extends StatelessWidget {
  StorieslistItemWidget(
    this.storieslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StorieslistItemModel storieslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder32,
              ),
              child: CustomImageView(
                imagePath: storieslistItemModelObj?.roy,
                height: 54.v,
                width: 52.h,
                radius: BorderRadius.circular(
                  27.h,
                ),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 10.v),
            Text(
              storieslistItemModelObj.roy1!,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
