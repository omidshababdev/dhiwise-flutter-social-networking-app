// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'profileslist1_item_model.dart';
import 'forty_item_model.dart';

/// This class defines the variables used in the [daily_new_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DailyNewModel extends Equatable {
  DailyNewModel({
    this.profileslist1ItemList = const [],
    this.fortyItemList = const [],
  }) {}

  List<Profileslist1ItemModel> profileslist1ItemList;

  List<FortyItemModel> fortyItemList;

  DailyNewModel copyWith({
    List<Profileslist1ItemModel>? profileslist1ItemList,
    List<FortyItemModel>? fortyItemList,
  }) {
    return DailyNewModel(
      profileslist1ItemList:
          profileslist1ItemList ?? this.profileslist1ItemList,
      fortyItemList: fortyItemList ?? this.fortyItemList,
    );
  }

  @override
  List<Object?> get props => [profileslist1ItemList, fortyItemList];
}
