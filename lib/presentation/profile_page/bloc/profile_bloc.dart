import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profilelist_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/profile_page/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        profileModelObj: state.profileModelObj
            ?.copyWith(profilelistItemList: fillProfilelistItemList())));
  }

  List<ProfilelistItemModel> fillProfilelistItemList() {
    return [
      ProfilelistItemModel(
          rosalia: "Rosalia",
          duration: "35 minutes ago",
          mostPeopleNever:
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
          zipcode: "2200",
          eightHundred: "800"),
      ProfilelistItemModel(
          rosalia: "Rosalia",
          duration: "35 minutes ago",
          mostPeopleNever:
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
          zipcode: "2200",
          eightHundred: "800")
    ];
  }
}
