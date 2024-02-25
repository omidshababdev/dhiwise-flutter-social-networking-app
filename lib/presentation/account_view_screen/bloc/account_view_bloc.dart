import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/account_view_screen/models/account_view_model.dart';
part 'account_view_event.dart';
part 'account_view_state.dart';

/// A bloc that manages the state of a AccountView according to the event that is dispatched to it.
class AccountViewBloc extends Bloc<AccountViewEvent, AccountViewState> {
  AccountViewBloc(AccountViewState initialState) : super(initialState) {
    on<AccountViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountViewInitialEvent event,
    Emitter<AccountViewState> emit,
  ) async {}
}
