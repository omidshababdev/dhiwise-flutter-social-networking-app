import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/trendinglist_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/trending_page/models/trending_model.dart';
part 'trending_event.dart';
part 'trending_state.dart';

/// A bloc that manages the state of a Trending according to the event that is dispatched to it.
class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  TrendingBloc(TrendingState initialState) : super(initialState) {
    on<TrendingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingInitialEvent event,
    Emitter<TrendingState> emit,
  ) async {
    emit(state.copyWith(
        trendingModelObj: state.trendingModelObj?.copyWith(
      trendinglistItemList: fillTrendinglistItemList(),
    )));
  }

  List<TrendinglistItemModel> fillTrendinglistItemList() {
    return [
      TrendinglistItemModel(
          image: ImageConstant.img40221x382,
          rickOnad: "Rick Onad",
          time: "40 min ago",
          thisIsTheMoment:
              "This is the moment where i take a photo of a couple hugging in a beautiful rice field.",
          huge: "#huge",
          fotography: "#fotography",
          nature: "#nature"),
      TrendinglistItemModel(
          image: ImageConstant.img401,
          rickOnad: "Rick Onad",
          time: "40 min ago",
          thisIsTheMoment:
              "This is the moment where i take a photo of a couple hugging in a beautiful rice field.",
          huge: "#huge",
          fotography: "#fotography",
          nature: "#nature")
    ];
  }
}
