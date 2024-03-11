import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 50.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 50.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: 2.v,
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 69.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
          ),
        );
      case Style.bgGradientnameblack90001opacity05nameblack90001opacity05:
        return Container(
          height: 217.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.black90001.withOpacity(0.5),
                appTheme.black90001.withOpacity(0.5),
              ],
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: 44.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.deepPurpleA200,
            borderRadius: BorderRadius.circular(
              15.h,
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgGradientnameblack90001opacity05nameblack90001opacity05,
  bgFill,
}
