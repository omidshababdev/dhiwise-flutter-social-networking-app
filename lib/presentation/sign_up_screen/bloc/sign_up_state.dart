// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.firstNameRowController,
    this.lastNameRowController,
    this.emailController,
    this.phoneController,
    this.dateOfBirthController,
    this.genderRadioGroup = "",
    this.signUpModelObj,
  });

  TextEditingController? firstNameRowController;

  TextEditingController? lastNameRowController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  TextEditingController? dateOfBirthController;

  SignUpModel? signUpModelObj;

  String genderRadioGroup;

  @override
  List<Object?> get props => [
        firstNameRowController,
        lastNameRowController,
        emailController,
        phoneController,
        dateOfBirthController,
        genderRadioGroup,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? firstNameRowController,
    TextEditingController? lastNameRowController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    TextEditingController? dateOfBirthController,
    String? genderRadioGroup,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      firstNameRowController:
          firstNameRowController ?? this.firstNameRowController,
      lastNameRowController:
          lastNameRowController ?? this.lastNameRowController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      genderRadioGroup: genderRadioGroup ?? this.genderRadioGroup,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
