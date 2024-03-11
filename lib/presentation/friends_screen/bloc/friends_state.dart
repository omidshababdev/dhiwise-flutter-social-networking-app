// ignore_for_file: must_be_immutable

part of 'friends_bloc.dart';

/// Represents the state of Friends in the application.
class FriendsState extends Equatable {
  FriendsState({
    this.searchController,
    this.friendsModelObj,
  });

  TextEditingController? searchController;

  FriendsModel? friendsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        friendsModelObj,
      ];

  FriendsState copyWith({
    TextEditingController? searchController,
    FriendsModel? friendsModelObj,
  }) {
    return FriendsState(
      searchController: searchController ?? this.searchController,
      friendsModelObj: friendsModelObj ?? this.friendsModelObj,
    );
  }
}
