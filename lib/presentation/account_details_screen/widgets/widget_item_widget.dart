import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/widget_item_model.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  WidgetItemWidget(
    this.widgetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetItemModel widgetItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        imagePath: widgetItemModelObj?.image,
        height: 54.v,
        width: 52.h,
        radius: BorderRadius.circular(
          27.h,
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
