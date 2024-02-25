import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/daily_new_tab_container_screen/models/daily_new_tab_container_model.dart';
part 'daily_new_tab_container_event.dart';
part 'daily_new_tab_container_state.dart';

/// A bloc that manages the state of a DailyNewTabContainer according to the event that is dispatched to it.
class DailyNewTabContainerBloc
    extends Bloc<DailyNewTabContainerEvent, DailyNewTabContainerState> {
  DailyNewTabContainerBloc(DailyNewTabContainerState initialState)
      : super(initialState) {
    on<DailyNewTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DailyNewTabContainerInitialEvent event,
    Emitter<DailyNewTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
