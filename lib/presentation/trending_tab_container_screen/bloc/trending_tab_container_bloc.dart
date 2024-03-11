import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stories_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/trending_tab_container_screen/models/trending_tab_container_model.dart';
part 'trending_tab_container_event.dart';
part 'trending_tab_container_state.dart';

/// A bloc that manages the state of a TrendingTabContainer according to the event that is dispatched to it.
class TrendingTabContainerBloc
    extends Bloc<TrendingTabContainerEvent, TrendingTabContainerState> {
  TrendingTabContainerBloc(TrendingTabContainerState initialState)
      : super(initialState) {
    on<TrendingTabContainerInitialEvent>(_onInitialize);
  }

  List<StoriesItemModel> fillStoriesItemList() {
    return [
      StoriesItemModel(roy: ImageConstant.imgEllipse15, roy1: "Roy"),
      StoriesItemModel(roy: ImageConstant.imgEllipse22, roy1: "Jordan"),
      StoriesItemModel(roy: ImageConstant.imgEllipse26, roy1: "Chrystin"),
      StoriesItemModel(roy: ImageConstant.imgEllipse28, roy1: "Vrindha"),
      StoriesItemModel(roy1: "Angeline")
    ];
  }

  _onInitialize(
    TrendingTabContainerInitialEvent event,
    Emitter<TrendingTabContainerState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        trendingTabContainerModelObj: state.trendingTabContainerModelObj
            ?.copyWith(storiesItemList: fillStoriesItemList())));
    NavigatorService.pushNamed(
      AppRoutes.profilePage,
    );
    NavigatorService.pushNamed(
      AppRoutes.notificationsPage,
    );
    NavigatorService.pushNamed(
      AppRoutes.messagesPage,
    ); // TODO: implement Actions
// TODO: implement Actions
  }
}
