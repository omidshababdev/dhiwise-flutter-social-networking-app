import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/commentlist_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/comments_screen/models/comments_model.dart';
part 'comments_event.dart';
part 'comments_state.dart';

/// A bloc that manages the state of a Comments according to the event that is dispatched to it.
class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc(CommentsState initialState) : super(initialState) {
    on<CommentsInitialEvent>(_onInitialize);
  }

  List<CommentlistItemModel> fillCommentlistItemList() {
    return [
      CommentlistItemModel(
          rizalReynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          mostPeopleNever:
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
          reply: "Reply"),
      CommentlistItemModel(
          rizalReynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          mostPeopleNever:
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
          reply: "Reply"),
      CommentlistItemModel(
          rizalReynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          mostPeopleNever:
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
          reply: "Reply")
    ];
  }

  _onInitialize(
    CommentsInitialEvent event,
    Emitter<CommentsState> emit,
  ) async {
    emit(state.copyWith(
      commentController: TextEditingController(),
    ));
    emit(state.copyWith(
        commentsModelObj: state.commentsModelObj?.copyWith(
      commentlistItemList: fillCommentlistItemList(),
    )));
  }
}
