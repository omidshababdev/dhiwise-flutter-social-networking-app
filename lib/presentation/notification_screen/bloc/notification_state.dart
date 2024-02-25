// ignore_for_file: must_be_immutable

part of 'notification_bloc.dart';

/// Represents the state of Notification in the application.
class NotificationState extends Equatable {
  NotificationState({
    this.isSelectedSwitch = false,
    this.notificationModelObj,
  });

  NotificationModel? notificationModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        notificationModelObj,
      ];

  NotificationState copyWith({
    bool? isSelectedSwitch,
    NotificationModel? notificationModelObj,
  }) {
    return NotificationState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      notificationModelObj: notificationModelObj ?? this.notificationModelObj,
    );
  }
}
