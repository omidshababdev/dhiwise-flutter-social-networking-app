import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/for_you_screen/models/for_you_model.dart';
part 'for_you_event.dart';
part 'for_you_state.dart';

/// A bloc that manages the state of a ForYou according to the event that is dispatched to it.
class ForYouBloc extends Bloc<ForYouEvent, ForYouState> {
  ForYouBloc(ForYouState initialState) : super(initialState) {
    on<ForYouInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForYouInitialEvent event,
    Emitter<ForYouState> emit,
  ) async {}
}
