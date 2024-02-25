import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profileslist_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/discover_page/models/discover_model.dart';
part 'discover_event.dart';
part 'discover_state.dart';

/// A bloc that manages the state of a Discover according to the event that is dispatched to it.
class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  DiscoverBloc(DiscoverState initialState) : super(initialState) {
    on<DiscoverInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DiscoverInitialEvent event,
    Emitter<DiscoverState> emit,
  ) async {
    emit(state.copyWith(
        discoverModelObj: state.discoverModelObj?.copyWith(
      profileslistItemList: fillProfileslistItemList(),
    )));
  }

  List<ProfileslistItemModel> fillProfileslistItemList() {
    return [
      ProfileslistItemModel(
          nineteen: ImageConstant.img19, agnessMonica: "Agness Monica"),
      ProfileslistItemModel(nineteen: ImageConstant.img19179x147),
      ProfileslistItemModel(
          nineteen: ImageConstant.img191, agnessMonica: "Windy Wandah")
    ];
  }
}
