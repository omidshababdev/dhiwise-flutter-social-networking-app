import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/sign_up_screen/models/sign_up_model.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

/// A bloc that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initialState) : super(initialState) {
    on<SignUpInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(
      genderRadioGroup: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_female", "lbl_male"];
  }

  _onInitialize(
    SignUpInitialEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      firstNameRowController: TextEditingController(),
      lastNameRowController: TextEditingController(),
      emailController: TextEditingController(),
      phoneController: TextEditingController(),
      dateOfBirthController: TextEditingController(),
      genderRadioGroup: "",
    ));
    emit(state.copyWith(
        signUpModelObj: state.signUpModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
