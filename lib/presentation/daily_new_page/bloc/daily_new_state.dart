// ignore_for_file: must_be_immutable

part of 'daily_new_bloc.dart';

/// Represents the state of DailyNew in the application.
class DailyNewState extends Equatable {
  DailyNewState({this.dailyNewModelObj});

  DailyNewModel? dailyNewModelObj;

  @override
  List<Object?> get props => [
        dailyNewModelObj,
      ];

  DailyNewState copyWith({DailyNewModel? dailyNewModelObj}) {
    return DailyNewState(
      dailyNewModelObj: dailyNewModelObj ?? this.dailyNewModelObj,
    );
  }
}
