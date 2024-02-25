// ignore_for_file: must_be_immutable

part of 'log_in_bloc.dart';

/// Represents the state of LogIn in the application.
class LogInState extends Equatable {
  LogInState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.logInModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LogInModel? logInModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        logInModelObj,
      ];

  LogInState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LogInModel? logInModelObj,
  }) {
    return LogInState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      logInModelObj: logInModelObj ?? this.logInModelObj,
    );
  }
}
