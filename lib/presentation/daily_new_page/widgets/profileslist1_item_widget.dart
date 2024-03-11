import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/profileslist1_item_model.dart';

// ignore: must_be_immutable
class Profileslist1ItemWidget extends StatelessWidget {
  Profileslist1ItemWidget(
    this.profileslist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Profileslist1ItemModel profileslist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 179.v,
      width: 147.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: profileslist1ItemModelObj?.nineteen,
            height: 179.v,
            width: 147.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 70.v),
              padding: EdgeInsets.symmetric(vertical: 12.v),
              decoration:
                  AppDecoration.gradientOnPrimaryContainerToBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPlay,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    margin: EdgeInsets.only(top: 51.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 63.v,
                      bottom: 8.v,
                    ),
                    child: Text(
                      profileslist1ItemModelObj.agnessMonica!,
                      style: CustomTextStyles.labelMediumPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
