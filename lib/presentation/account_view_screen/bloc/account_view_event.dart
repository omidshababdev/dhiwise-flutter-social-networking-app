// ignore_for_file: must_be_immutable

part of 'account_view_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AccountView widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccountViewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AccountView widget is first created.
class AccountViewInitialEvent extends AccountViewEvent {
  @override
  List<Object?> get props => [];
}
