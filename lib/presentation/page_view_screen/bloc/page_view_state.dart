// ignore_for_file: must_be_immutable

part of 'page_view_bloc.dart';

/// Represents the state of PageView in the application.
class PageViewState extends Equatable {
  PageViewState({
    this.commentController,
    this.pageViewModelObj,
  });

  TextEditingController? commentController;

  PageViewModel? pageViewModelObj;

  @override
  List<Object?> get props => [
        commentController,
        pageViewModelObj,
      ];

  PageViewState copyWith({
    TextEditingController? commentController,
    PageViewModel? pageViewModelObj,
  }) {
    return PageViewState(
      commentController: commentController ?? this.commentController,
      pageViewModelObj: pageViewModelObj ?? this.pageViewModelObj,
    );
  }
}
