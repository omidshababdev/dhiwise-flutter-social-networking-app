import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profileslist1_item_model.dart';
import '../models/forty_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/daily_new_page/models/daily_new_model.dart';
part 'daily_new_event.dart';
part 'daily_new_state.dart';

/// A bloc that manages the state of a DailyNew according to the event that is dispatched to it.
class DailyNewBloc extends Bloc<DailyNewEvent, DailyNewState> {
  DailyNewBloc(DailyNewState initialState) : super(initialState) {
    on<DailyNewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DailyNewInitialEvent event,
    Emitter<DailyNewState> emit,
  ) async {
    emit(state.copyWith(
        dailyNewModelObj: state.dailyNewModelObj?.copyWith(
      profileslist1ItemList: fillProfileslist1ItemList(),
      fortyItemList: fillFortyItemList(),
    )));
  }

  List<Profileslist1ItemModel> fillProfileslist1ItemList() {
    return [
      Profileslist1ItemModel(
          nineteen: ImageConstant.img19, agnessMonica: "Agness Monica"),
      Profileslist1ItemModel(nineteen: ImageConstant.img19179x147),
      Profileslist1ItemModel(
          nineteen: ImageConstant.img191, agnessMonica: "Windy Wandah")
    ];
  }

  List<FortyItemModel> fillFortyItemList() {
    return [
      FortyItemModel(forty: ImageConstant.img40),
      FortyItemModel(forty: ImageConstant.img34)
    ];
  }
}
