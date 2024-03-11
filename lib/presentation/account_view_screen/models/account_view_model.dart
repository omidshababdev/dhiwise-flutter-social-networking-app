// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [account_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountViewModel extends Equatable {
  AccountViewModel() {}

  AccountViewModel copyWith() {
    return AccountViewModel();
  }

  @override
  List<Object?> get props => [];
}
