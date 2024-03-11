import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/fortysix_item_model.dart';

// ignore: must_be_immutable
class FortysixItemWidget extends StatelessWidget {
  FortysixItemWidget(
    this.fortysixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortysixItemModel fortysixItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 117.h,
      child: CustomImageView(
        imagePath: fortysixItemModelObj?.fortySix,
        height: 161.v,
        width: 117.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
