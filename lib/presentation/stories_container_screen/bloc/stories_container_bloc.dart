import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/stories_container_screen/models/stories_container_model.dart';
part 'stories_container_event.dart';
part 'stories_container_state.dart';

/// A bloc that manages the state of a StoriesContainer according to the event that is dispatched to it.
class StoriesContainerBloc
    extends Bloc<StoriesContainerEvent, StoriesContainerState> {
  StoriesContainerBloc(StoriesContainerState initialState)
      : super(initialState) {
    on<StoriesContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StoriesContainerInitialEvent event,
    Emitter<StoriesContainerState> emit,
  ) async {}
}
