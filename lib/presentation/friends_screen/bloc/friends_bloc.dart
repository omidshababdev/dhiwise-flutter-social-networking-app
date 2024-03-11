import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ninetysevenlist_item_model.dart';
import '../models/follow_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/friends_screen/models/friends_model.dart';
part 'friends_event.dart';
part 'friends_state.dart';

/// A bloc that manages the state of a Friends according to the event that is dispatched to it.
class FriendsBloc extends Bloc<FriendsEvent, FriendsState> {
  FriendsBloc(FriendsState initialState) : super(initialState) {
    on<FriendsInitialEvent>(_onInitialize);
  }

  List<NinetysevenlistItemModel> fillNinetysevenlistItemList() {
    return [
      NinetysevenlistItemModel(trash: ImageConstant.imgTrashBlue500),
      NinetysevenlistItemModel(trash: ImageConstant.imgFacebookBlueA400),
      NinetysevenlistItemModel(trash: ImageConstant.imgThumbsUp)
    ];
  }

  List<FollowItemModel> fillFollowItemList() {
    return [
      FollowItemModel(
          kevinAllsrub: ImageConstant.imgEllipse5,
          kevinAllsrub1: "Kevin Allsrub",
          yourEFriendsOn: "Your’e friends on twitter"),
      FollowItemModel(
          kevinAllsrub: ImageConstant.imgEllipse6,
          kevinAllsrub1: "Sarah Owen",
          yourEFriendsOn: "Your’e friends on twitter"),
      FollowItemModel(
          kevinAllsrub: ImageConstant.imgEllipse7,
          kevinAllsrub1: "Rick Onad",
          yourEFriendsOn: "Your’e friends on twitter"),
      FollowItemModel(
          kevinAllsrub: ImageConstant.imgEllipse8,
          kevinAllsrub1: "Steven Ford",
          yourEFriendsOn: "Your’e friends on twitter"),
      FollowItemModel(
          kevinAllsrub: ImageConstant.imgEllipse9,
          kevinAllsrub1: "Lucas Anna ",
          yourEFriendsOn: "Your’e friends on twitter"),
      FollowItemModel(
          kevinAllsrub: ImageConstant.imgEllipse10,
          kevinAllsrub1: "Nabila Remaar",
          yourEFriendsOn: "Your’e friends on twitter"),
      FollowItemModel(
          kevinAllsrub: ImageConstant.imgEllipse11,
          kevinAllsrub1: "Rosalia",
          yourEFriendsOn: "Your’e friends on twitter")
    ];
  }

  _onInitialize(
    FriendsInitialEvent event,
    Emitter<FriendsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        friendsModelObj: state.friendsModelObj?.copyWith(
            ninetysevenlistItemList: fillNinetysevenlistItemList(),
            followItemList: fillFollowItemList())));
  }
}
