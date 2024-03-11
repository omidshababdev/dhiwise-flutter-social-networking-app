// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'stories1_item_model.dart';
import 'messageslist_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel extends Equatable {
  MessagesModel({
    this.stories1ItemList = const [],
    this.messageslistItemList = const [],
  }) {}

  List<Stories1ItemModel> stories1ItemList;

  List<MessageslistItemModel> messageslistItemList;

  MessagesModel copyWith({
    List<Stories1ItemModel>? stories1ItemList,
    List<MessageslistItemModel>? messageslistItemList,
  }) {
    return MessagesModel(
      stories1ItemList: stories1ItemList ?? this.stories1ItemList,
      messageslistItemList: messageslistItemList ?? this.messageslistItemList,
    );
  }

  @override
  List<Object?> get props => [stories1ItemList, messageslistItemList];
}
