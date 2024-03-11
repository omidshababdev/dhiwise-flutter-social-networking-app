// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'fortysix_item_model.dart';
import 'widget_item_model.dart';

/// This class defines the variables used in the [account_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountDetailsModel extends Equatable {
  AccountDetailsModel({
    this.fortysixItemList = const [],
    this.widgetItemList = const [],
  }) {}

  List<FortysixItemModel> fortysixItemList;

  List<WidgetItemModel> widgetItemList;

  AccountDetailsModel copyWith({
    List<FortysixItemModel>? fortysixItemList,
    List<WidgetItemModel>? widgetItemList,
  }) {
    return AccountDetailsModel(
      fortysixItemList: fortysixItemList ?? this.fortysixItemList,
      widgetItemList: widgetItemList ?? this.widgetItemList,
    );
  }

  @override
  List<Object?> get props => [fortysixItemList, widgetItemList];
}
