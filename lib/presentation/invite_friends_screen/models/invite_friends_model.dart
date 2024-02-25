// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'friendlist_item_model.dart';

/// This class defines the variables used in the [invite_friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InviteFriendsModel extends Equatable {
  InviteFriendsModel({this.friendlistItemList = const []}) {}

  List<FriendlistItemModel> friendlistItemList;

  InviteFriendsModel copyWith({List<FriendlistItemModel>? friendlistItemList}) {
    return InviteFriendsModel(
      friendlistItemList: friendlistItemList ?? this.friendlistItemList,
    );
  }

  @override
  List<Object?> get props => [friendlistItemList];
}
