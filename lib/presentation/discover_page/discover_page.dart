import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'bloc/discover_bloc.dart';
import 'models/discover_model.dart';
import 'models/profileslist_item_model.dart';
import 'widgets/profileslist_item_widget.dart';

// ignore_for_file: must_be_immutable
class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key})
      : super(
          key: key,
        );

  @override
  DiscoverPageState createState() => DiscoverPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DiscoverBloc>(
      create: (context) => DiscoverBloc(DiscoverState(
        discoverModelObj: DiscoverModel(),
      ))
        ..add(DiscoverInitialEvent()),
      child: DiscoverPage(),
    );
  }
}

class DiscoverPageState extends State<DiscoverPage>
    with AutomaticKeepAliveClientMixin<DiscoverPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfilesList(context),
                    SizedBox(height: 30.v),
                    _buildPostStack(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfilesList(BuildContext context) {
    return SizedBox(
      height: 179.v,
      child: BlocSelector<DiscoverBloc, DiscoverState, DiscoverModel?>(
        selector: (state) => state.discoverModelObj,
        builder: (context, discoverModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: discoverModelObj?.profileslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              ProfileslistItemModel model =
                  discoverModelObj?.profileslistItemList[index] ??
                      ProfileslistItemModel();
              return ProfileslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPostStack(BuildContext context) {
    return SizedBox(
      height: 401.v,
      width: 382.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 384.v,
              width: 382.h,
              decoration: BoxDecoration(
                color: appTheme.deepPurpleA200,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black90001.withOpacity(0.1),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      2,
                      1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                              "lbl_rizal_reynaldhi".tr,
                              style: CustomTextStyles.titleMedium18,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "lbl_35_minutes_ago".tr,
                              style: CustomTextStyles.labelMediumBluegray100,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgGrid,
                        height: 6.v,
                        width: 30.h,
                        margin: EdgeInsets.symmetric(vertical: 22.v),
                      ),
                    ],
                  ),
                  SizedBox(height: 17.v),
                  Container(
                    width: 295.h,
                    margin: EdgeInsets.only(right: 39.h),
                    child: Text(
                      "msg_me_and_my_friends".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargePrimary.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(right: 112.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl_beach".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        Spacer(),
                        Text(
                          "lbl_ocean".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text(
                            "lbl_holiday".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  CustomImageView(
                    imagePath: ImageConstant.img211,
                    height: 227.v,
                    width: 334.h,
                    radius: BorderRadius.circular(
                      15.h,
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
