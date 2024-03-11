// ignore_for_file: must_be_immutable

part of 'account_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AccountDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccountDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AccountDetails widget is first created.
class AccountDetailsInitialEvent extends AccountDetailsEvent {
  @override
  List<Object?> get props => [];
}
