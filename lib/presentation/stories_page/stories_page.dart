import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'bloc/stories_bloc.dart';
import 'models/eventslist_item_model.dart';
import 'models/stories_model.dart';
import 'models/storieslist_item_model.dart';
import 'widgets/eventslist_item_widget.dart';
import 'widgets/storieslist_item_widget.dart';

// ignore_for_file: must_be_immutable
class StoriesPage extends StatelessWidget {
  const StoriesPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<StoriesBloc>(
      create: (context) => StoriesBloc(StoriesState(
        storiesModelObj: StoriesModel(),
      ))
        ..add(StoriesInitialEvent()),
      child: StoriesPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_stories".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 20.v),
              _buildStoriesList(context),
              SizedBox(height: 21.v),
              _buildPost(context),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_events".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 16.v),
              _buildEventsList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: BlocSelector<StoriesBloc, StoriesState, TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search".tr,
            controller: searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAdd,
          margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStoriesList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 89.v,
        child: BlocSelector<StoriesBloc, StoriesState, StoriesModel?>(
          selector: (state) => state.storiesModelObj,
          builder: (context, storiesModelObj) {
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: storiesModelObj?.storieslistItemList.length ?? 0,
              itemBuilder: (context, index) {
                StorieslistItemModel model =
                    storiesModelObj?.storieslistItemList[index] ??
                        StorieslistItemModel();
                return StorieslistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPost(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 22.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: 18.v),
            Container(
              width: 332.h,
              margin: EdgeInsets.only(right: 17.h),
              child: Text(
                "msg_most_people_never".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargePrimary.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 14.v),
            Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 17.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_2200".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 18.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 7.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_800".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsPrimary,
                    height: 25.v,
                    width: 54.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEventsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: BlocSelector<StoriesBloc, StoriesState, StoriesModel?>(
        selector: (state) => state.storiesModelObj,
        builder: (context, storiesModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 1.v,
              );
            },
            itemCount: storiesModelObj?.eventslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              EventslistItemModel model =
                  storiesModelObj?.eventslistItemList[index] ??
                      EventslistItemModel();
              return EventslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
