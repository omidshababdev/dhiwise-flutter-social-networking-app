import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/stories_item_model.dart';

// ignore: must_be_immutable
class StoriesItemWidget extends StatelessWidget {
  StoriesItemWidget(
    this.storiesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StoriesItemModel storiesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
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
              imagePath: storiesItemModelObj?.roy,
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
            storiesItemModelObj.roy1!,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
