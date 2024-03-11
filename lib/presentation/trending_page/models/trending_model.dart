// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'trendinglist_item_model.dart';

/// This class defines the variables used in the [trending_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingModel extends Equatable {
  TrendingModel({this.trendinglistItemList = const []}) {}

  List<TrendinglistItemModel> trendinglistItemList;

  TrendingModel copyWith({List<TrendinglistItemModel>? trendinglistItemList}) {
    return TrendingModel(
      trendinglistItemList: trendinglistItemList ?? this.trendinglistItemList,
    );
  }

  @override
  List<Object?> get props => [trendinglistItemList];
}
