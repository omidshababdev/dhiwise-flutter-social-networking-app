import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/trending_posts_tab_container_screen/models/trending_posts_tab_container_model.dart';
part 'trending_posts_tab_container_event.dart';
part 'trending_posts_tab_container_state.dart';

/// A bloc that manages the state of a TrendingPostsTabContainer according to the event that is dispatched to it.
class TrendingPostsTabContainerBloc extends Bloc<TrendingPostsTabContainerEvent,
    TrendingPostsTabContainerState> {
  TrendingPostsTabContainerBloc(TrendingPostsTabContainerState initialState)
      : super(initialState) {
    on<TrendingPostsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingPostsTabContainerInitialEvent event,
    Emitter<TrendingPostsTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
