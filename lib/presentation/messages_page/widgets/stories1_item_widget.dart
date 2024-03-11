import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import '../models/stories1_item_model.dart';

// ignore: must_be_immutable
class Stories1ItemWidget extends StatelessWidget {
  Stories1ItemWidget(
    this.stories1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Stories1ItemModel stories1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            SizedBox(
              height: 54.v,
              width: 52.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: stories1ItemModelObj?.roy,
                    height: 54.v,
                    width: 52.h,
                    radius: BorderRadius.circular(
                      27.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.green600,
                        borderRadius: BorderRadius.circular(
                          6.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.primary,
                          width: 2.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              stories1ItemModelObj.roy1!,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
