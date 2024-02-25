// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [sign_up_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpModel extends Equatable {
  SignUpModel({this.radioList = const []}) {}

  List<String> radioList;

  SignUpModel copyWith({List<String>? radioList}) {
    return SignUpModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
