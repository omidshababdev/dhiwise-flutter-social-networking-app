import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/commentlist_item_model.dart';

// ignore: must_be_immutable
class CommentlistItemWidget extends StatelessWidget {
  CommentlistItemWidget(
    this.commentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CommentlistItemModel commentlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse21,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 9.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    commentlistItemModelObj.rizalReynaldhi!,
                    style: CustomTextStyles.titleMediumGray600,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    commentlistItemModelObj.duration!,
                    style: CustomTextStyles.labelMediumGray500,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        SizedBox(
          width: 382.h,
          child: Text(
            commentlistItemModelObj.mostPeopleNever!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLargeBluegray700.copyWith(
              height: 1.50,
            ),
          ),
        ),
        SizedBox(height: 17.v),
        Text(
          commentlistItemModelObj.reply!,
          style: CustomTextStyles.titleMediumDeeppurpleA200SemiBold_1,
        ),
      ],
    );
  }
}
