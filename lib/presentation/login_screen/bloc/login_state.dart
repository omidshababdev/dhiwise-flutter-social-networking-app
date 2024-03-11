// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({this.loginModelObj});

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        loginModelObj,
      ];

  LoginState copyWith({LoginModel? loginModelObj}) {
    return LoginState(
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
