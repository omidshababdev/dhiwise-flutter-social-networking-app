// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'ninetysevenlist_item_model.dart';
import 'follow_item_model.dart';

/// This class defines the variables used in the [friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FriendsModel extends Equatable {
  FriendsModel({
    this.ninetysevenlistItemList = const [],
    this.followItemList = const [],
  }) {}

  List<NinetysevenlistItemModel> ninetysevenlistItemList;

  List<FollowItemModel> followItemList;

  FriendsModel copyWith({
    List<NinetysevenlistItemModel>? ninetysevenlistItemList,
    List<FollowItemModel>? followItemList,
  }) {
    return FriendsModel(
      ninetysevenlistItemList:
          ninetysevenlistItemList ?? this.ninetysevenlistItemList,
      followItemList: followItemList ?? this.followItemList,
    );
  }

  @override
  List<Object?> get props => [ninetysevenlistItemList, followItemList];
}
