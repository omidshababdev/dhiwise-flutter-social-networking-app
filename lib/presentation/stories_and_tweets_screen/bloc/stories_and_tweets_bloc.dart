import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/livestories_item_model.dart';
import '../models/frame_item_model.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/stories_and_tweets_screen/models/stories_and_tweets_model.dart';
part 'stories_and_tweets_event.dart';
part 'stories_and_tweets_state.dart';

/// A bloc that manages the state of a StoriesAndTweets according to the event that is dispatched to it.
class StoriesAndTweetsBloc
    extends Bloc<StoriesAndTweetsEvent, StoriesAndTweetsState> {
  StoriesAndTweetsBloc(StoriesAndTweetsState initialState)
      : super(initialState) {
    on<StoriesAndTweetsInitialEvent>(_onInitialize);
  }

  List<LivestoriesItemModel> fillLivestoriesItemList() {
    return [
      LivestoriesItemModel(save: ImageConstant.imgSave, newPost: "New Post"),
      LivestoriesItemModel(newPost: "Jordan"),
      LivestoriesItemModel(newPost: "Angeline"),
      LivestoriesItemModel(newPost: "Chrystin"),
      LivestoriesItemModel(newPost: "Vrindha")
    ];
  }

  List<FrameItemModel> fillFrameItemList() {
    return [
      FrameItemModel(
          albertOConnor: "Albert O’connor",
          duration: "4  hours ago",
          introduceIAmA:
              "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.",
          zipcode: "2200",
          eightHundred: "800",
          albertOConnor1: "Albert O’connor",
          duration1: "4  hours ago",
          introduceIAmA1:
              "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.")
    ];
  }

  _onInitialize(
    StoriesAndTweetsInitialEvent event,
    Emitter<StoriesAndTweetsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        storiesAndTweetsModelObj: state.storiesAndTweetsModelObj?.copyWith(
            livestoriesItemList: fillLivestoriesItemList(),
            frameItemList: fillFrameItemList())));
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
