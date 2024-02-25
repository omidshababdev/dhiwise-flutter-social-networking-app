import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/detailed_profile_screen/models/detailed_profile_model.dart';
part 'detailed_profile_event.dart';
part 'detailed_profile_state.dart';

/// A bloc that manages the state of a DetailedProfile according to the event that is dispatched to it.
class DetailedProfileBloc
    extends Bloc<DetailedProfileEvent, DetailedProfileState> {
  DetailedProfileBloc(DetailedProfileState initialState) : super(initialState) {
    on<DetailedProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailedProfileInitialEvent event,
    Emitter<DetailedProfileState> emit,
  ) async {}
}
