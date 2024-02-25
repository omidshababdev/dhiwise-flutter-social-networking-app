import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'bloc/trending_bloc.dart';
import 'models/trending_model.dart';
import 'models/trendinglist_item_model.dart';
import 'widgets/trendinglist_item_widget.dart';

// ignore_for_file: must_be_immutable
class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrendingPageState createState() => TrendingPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingBloc>(
      create: (context) => TrendingBloc(TrendingState(
        trendingModelObj: TrendingModel(),
      ))
        ..add(TrendingInitialEvent()),
      child: TrendingPage(),
    );
  }
}

class TrendingPageState extends State<TrendingPage>
    with AutomaticKeepAliveClientMixin<TrendingPage> {
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
              SizedBox(height: 23.v),
              _buildTrendingList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: BlocSelector<TrendingBloc, TrendingState, TrendingModel?>(
          selector: (state) => state.trendingModelObj,
          builder: (context, trendingModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 24.v,
                );
              },
              itemCount: trendingModelObj?.trendinglistItemList.length ?? 0,
              itemBuilder: (context, index) {
                TrendinglistItemModel model =
                    trendingModelObj?.trendinglistItemList[index] ??
                        TrendinglistItemModel();
                return TrendinglistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
