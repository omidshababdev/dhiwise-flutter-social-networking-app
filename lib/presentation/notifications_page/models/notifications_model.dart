// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'notificationslist_item_model.dart';

/// This class defines the variables used in the [notifications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel extends Equatable {
  NotificationsModel({this.notificationslistItemList = const []}) {}

  List<NotificationslistItemModel> notificationslistItemList;

  NotificationsModel copyWith(
      {List<NotificationslistItemModel>? notificationslistItemList}) {
    return NotificationsModel(
      notificationslistItemList:
          notificationslistItemList ?? this.notificationslistItemList,
    );
  }

  @override
  List<Object?> get props => [notificationslistItemList];
}
