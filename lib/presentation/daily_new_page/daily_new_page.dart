import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'bloc/daily_new_bloc.dart';
import 'models/daily_new_model.dart';
import 'models/forty_item_model.dart';
import 'models/profileslist1_item_model.dart';
import 'widgets/forty_item_widget.dart';
import 'widgets/profileslist1_item_widget.dart';

// ignore_for_file: must_be_immutable
class DailyNewPage extends StatefulWidget {
  const DailyNewPage({Key? key})
      : super(
          key: key,
        );

  @override
  DailyNewPageState createState() => DailyNewPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DailyNewBloc>(
      create: (context) => DailyNewBloc(DailyNewState(
        dailyNewModelObj: DailyNewModel(),
      ))
        ..add(DailyNewInitialEvent()),
      child: DailyNewPage(),
    );
  }
}

class DailyNewPageState extends State<DailyNewPage>
    with AutomaticKeepAliveClientMixin<DailyNewPage> {
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
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfilesList(context),
                    SizedBox(height: 30.v),
                    _buildPostColumn(context),
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
      child: BlocSelector<DailyNewBloc, DailyNewState, DailyNewModel?>(
        selector: (state) => state.dailyNewModelObj,
        builder: (context, dailyNewModelObj) {
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
            itemCount: dailyNewModelObj?.profileslist1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Profileslist1ItemModel model =
                  dailyNewModelObj?.profileslist1ItemList[index] ??
                      Profileslist1ItemModel();
              return Profileslist1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPostColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse2150x50,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_avari_kudhra".tr,
                        style: CustomTextStyles.titleMedium18,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_1_hour_ago".tr,
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
          ),
          SizedBox(height: 33.v),
          SizedBox(
            height: 167.v,
            child: BlocSelector<DailyNewBloc, DailyNewState, DailyNewModel?>(
              selector: (state) => state.dailyNewModelObj,
              builder: (context, dailyNewModelObj) {
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
                  itemCount: dailyNewModelObj?.fortyItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    FortyItemModel model =
                        dailyNewModelObj?.fortyItemList[index] ??
                            FortyItemModel();
                    return FortyItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 17.v),
          Container(
            width: 340.h,
            margin: EdgeInsets.only(right: 8.h),
            child: Text(
              "msg_this_is_a_very_rare".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargePrimary.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              Text(
                "lbl_animal".tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.h),
                child: Text(
                  "lbl_forest".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.h),
                child: Text(
                  "lbl_rabbit".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
