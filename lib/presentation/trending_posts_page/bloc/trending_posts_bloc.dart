import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/trending_posts_page/models/trending_posts_model.dart';
part 'trending_posts_event.dart';
part 'trending_posts_state.dart';

/// A bloc that manages the state of a TrendingPosts according to the event that is dispatched to it.
class TrendingPostsBloc extends Bloc<TrendingPostsEvent, TrendingPostsState> {
  TrendingPostsBloc(TrendingPostsState initialState) : super(initialState) {
    on<TrendingPostsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingPostsInitialEvent event,
    Emitter<TrendingPostsState> emit,
  ) async {
    NavigatorService.pushNamed(
      AppRoutes.dailyNewTabContainerScreen,
    );
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onReady() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
