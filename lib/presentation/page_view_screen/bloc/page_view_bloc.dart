import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/conversions_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/page_view_screen/models/page_view_model.dart';
part 'page_view_event.dart';
part 'page_view_state.dart';

/// A bloc that manages the state of a PageView according to the event that is dispatched to it.
class PageViewBloc extends Bloc<PageViewEvent, PageViewState> {
  PageViewBloc(PageViewState initialState) : super(initialState) {
    on<PageViewInitialEvent>(_onInitialize);
  }

  List<ConversionsItemModel> fillConversionsItemList() {
    return List.generate(4, (index) => ConversionsItemModel());
  }

  _onInitialize(
    PageViewInitialEvent event,
    Emitter<PageViewState> emit,
  ) async {
    emit(state.copyWith(commentController: TextEditingController()));
    emit(state.copyWith(
        pageViewModelObj: state.pageViewModelObj
            ?.copyWith(conversionsItemList: fillConversionsItemList())));
  }
}
