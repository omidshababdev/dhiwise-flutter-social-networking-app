// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'conversions_item_model.dart';

/// This class defines the variables used in the [page_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PageViewModel extends Equatable {
  PageViewModel({this.conversionsItemList = const []}) {}

  List<ConversionsItemModel> conversionsItemList;

  PageViewModel copyWith({List<ConversionsItemModel>? conversionsItemList}) {
    return PageViewModel(
      conversionsItemList: conversionsItemList ?? this.conversionsItemList,
    );
  }

  @override
  List<Object?> get props => [conversionsItemList];
}
