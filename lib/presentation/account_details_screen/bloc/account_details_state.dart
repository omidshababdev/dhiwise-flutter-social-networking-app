// ignore_for_file: must_be_immutable

part of 'account_details_bloc.dart';

/// Represents the state of AccountDetails in the application.
class AccountDetailsState extends Equatable {
  AccountDetailsState({this.accountDetailsModelObj});

  AccountDetailsModel? accountDetailsModelObj;

  @override
  List<Object?> get props => [
        accountDetailsModelObj,
      ];

  AccountDetailsState copyWith({AccountDetailsModel? accountDetailsModelObj}) {
    return AccountDetailsState(
      accountDetailsModelObj:
          accountDetailsModelObj ?? this.accountDetailsModelObj,
    );
  }
}
