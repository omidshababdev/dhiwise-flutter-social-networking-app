import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/storieslist_item_model.dart';
import '../models/eventslist_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/stories_page/models/stories_model.dart';
part 'stories_event.dart';
part 'stories_state.dart';

/// A bloc that manages the state of a Stories according to the event that is dispatched to it.
class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  StoriesBloc(StoriesState initialState) : super(initialState) {
    on<StoriesInitialEvent>(_onInitialize);
  }

  List<StorieslistItemModel> fillStorieslistItemList() {
    return [
      StorieslistItemModel(roy: ImageConstant.imgEllipse15, roy1: "Roy"),
      StorieslistItemModel(roy: ImageConstant.imgEllipse22, roy1: "Jordan"),
      StorieslistItemModel(roy: ImageConstant.imgEllipse26, roy1: "Chrystin"),
      StorieslistItemModel(roy: ImageConstant.imgEllipse28, roy1: "Vrindha"),
      StorieslistItemModel(roy1: "Angeline")
    ];
  }

  List<EventslistItemModel> fillEventslistItemList() {
    return [
      EventslistItemModel(
          lIVEWeTheFest: ImageConstant.img19144x147,
          blueLoyalParty: ImageConstant.img192,
          lIVEWeTheFest1: "LIVE - We The Fest",
          price: "19 : 00 | Forg Stadium",
          blueLoyalParty1: "Blue Loyal Party",
          price1: "19 : 35 | Latuna Beach")
    ];
  }

  _onInitialize(
    StoriesInitialEvent event,
    Emitter<StoriesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        storiesModelObj: state.storiesModelObj?.copyWith(
      storieslistItemList: fillStorieslistItemList(),
      eventslistItemList: fillEventslistItemList(),
    )));
  }
}
