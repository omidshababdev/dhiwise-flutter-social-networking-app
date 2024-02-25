import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/conversions_item_model.dart';

// ignore: must_be_immutable
class ConversionsItemWidget extends StatelessWidget {
  ConversionsItemWidget(
    this.conversionsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ConversionsItemModel conversionsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.adaptSize,
      width: 40.adaptSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.h,
        ),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgEllipse940x40,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
