import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notificationslist_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/notifications_page/models/notifications_model.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

/// A bloc that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc(NotificationsState initialState) : super(initialState) {
    on<NotificationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsInitialEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    emit(state.copyWith(
        notificationsModelObj: state.notificationsModelObj?.copyWith(
            notificationslistItemList: fillNotificationslistItemList())));
  }

  List<NotificationslistItemModel> fillNotificationslistItemList() {
    return [
      NotificationslistItemModel(
          image: ImageConstant.imgEllipse22,
          kevinHasFollowed: "Kevin has followed you",
          duration: "1 hour ago"),
      NotificationslistItemModel(
          image: ImageConstant.imgEllipse2254x52,
          kevinHasFollowed:
              "Arman has commented on your story\n “hey there” to your timeline",
          duration: "2 hours ago"),
      NotificationslistItemModel(image: ImageConstant.imgEllipse221),
      NotificationslistItemModel(
          image: ImageConstant.imgEllipse222,
          kevinHasFollowed:
              "Arman has commented on your story\n “hey there” to your timeline",
          duration: "2 hours ago"),
      NotificationslistItemModel(
          image: ImageConstant.imgEllipse22,
          kevinHasFollowed:
              "Arman has commented on your story\n “hey there” to your timeline",
          duration: "2 hours ago")
    ];
  }
}
