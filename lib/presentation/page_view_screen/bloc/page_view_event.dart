// ignore_for_file: must_be_immutable

part of 'page_view_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageView widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageViewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PageView widget is first created.
class PageViewInitialEvent extends PageViewEvent {
  @override
  List<Object?> get props => [];
}
