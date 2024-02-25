// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'recentsearches_item_model.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel extends Equatable {
  SearchModel({this.recentsearchesItemList = const []}) {}

  List<RecentsearchesItemModel> recentsearchesItemList;

  SearchModel copyWith(
      {List<RecentsearchesItemModel>? recentsearchesItemList}) {
    return SearchModel(
      recentsearchesItemList:
          recentsearchesItemList ?? this.recentsearchesItemList,
    );
  }

  @override
  List<Object?> get props => [recentsearchesItemList];
}
