import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_icon_button.dart';
import '../models/livestories_item_model.dart';

// ignore: must_be_immutable
class LivestoriesItemWidget extends StatelessWidget {
  LivestoriesItemWidget(
    this.livestoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LivestoriesItemModel livestoriesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.fillDeepPurpleATL32,
              child: CustomImageView(
                imagePath: livestoriesItemModelObj?.save,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              livestoriesItemModelObj.newPost!,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
