// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'profileslist_item_model.dart';

/// This class defines the variables used in the [discover_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscoverModel extends Equatable {
  DiscoverModel({this.profileslistItemList = const []}) {}

  List<ProfileslistItemModel> profileslistItemList;

  DiscoverModel copyWith({List<ProfileslistItemModel>? profileslistItemList}) {
    return DiscoverModel(
      profileslistItemList: profileslistItemList ?? this.profileslistItemList,
    );
  }

  @override
  List<Object?> get props => [profileslistItemList];
}
