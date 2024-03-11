import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortysix_item_model.dart';
import '../models/widget_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/account_details_screen/models/account_details_model.dart';
part 'account_details_event.dart';
part 'account_details_state.dart';

/// A bloc that manages the state of a AccountDetails according to the event that is dispatched to it.
class AccountDetailsBloc
    extends Bloc<AccountDetailsEvent, AccountDetailsState> {
  AccountDetailsBloc(AccountDetailsState initialState) : super(initialState) {
    on<AccountDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountDetailsInitialEvent event,
    Emitter<AccountDetailsState> emit,
  ) async {
    emit(state.copyWith(
        accountDetailsModelObj: state.accountDetailsModelObj?.copyWith(
            fortysixItemList: fillFortysixItemList(),
            widgetItemList: fillWidgetItemList())));
  }

  List<FortysixItemModel> fillFortysixItemList() {
    return [
      FortysixItemModel(fortySix: ImageConstant.img46),
      FortysixItemModel(fortySix: ImageConstant.img47),
      FortysixItemModel(fortySix: ImageConstant.img48)
    ];
  }

  List<WidgetItemModel> fillWidgetItemList() {
    return [
      WidgetItemModel(image: ImageConstant.imgEllipse15),
      WidgetItemModel(image: ImageConstant.imgEllipse22),
      WidgetItemModel(image: ImageConstant.imgEllipse24),
      WidgetItemModel(image: ImageConstant.imgEllipse26),
      WidgetItemModel(image: ImageConstant.imgEllipse28)
    ];
  }
}
