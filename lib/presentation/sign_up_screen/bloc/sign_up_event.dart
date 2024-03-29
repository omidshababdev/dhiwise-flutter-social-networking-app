// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SignUp widget is first created.
class SignUpInitialEvent extends SignUpEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends SignUpEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
