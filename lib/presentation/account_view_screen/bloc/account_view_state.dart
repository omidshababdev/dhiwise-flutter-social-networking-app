// ignore_for_file: must_be_immutable

part of 'account_view_bloc.dart';

/// Represents the state of AccountView in the application.
class AccountViewState extends Equatable {
  AccountViewState({this.accountViewModelObj});

  AccountViewModel? accountViewModelObj;

  @override
  List<Object?> get props => [
        accountViewModelObj,
      ];

  AccountViewState copyWith({AccountViewModel? accountViewModelObj}) {
    return AccountViewState(
      accountViewModelObj: accountViewModelObj ?? this.accountViewModelObj,
    );
  }
}
