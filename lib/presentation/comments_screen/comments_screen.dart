import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_icon_button.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_text_form_field.dart';
import 'bloc/comments_bloc.dart';
import 'models/commentlist_item_model.dart';
import 'models/comments_model.dart';
import 'widgets/commentlist_item_widget.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CommentsBloc>(
      create: (context) => CommentsBloc(CommentsState(
        commentsModelObj: CommentsModel(),
      ))
        ..add(CommentsInitialEvent()),
      child: CommentsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_comments".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 21.v),
              _buildCommentList(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildCommentBox(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(19.h, 16.v, 377.h, 16.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentList(BuildContext context) {
    return BlocSelector<CommentsBloc, CommentsState, CommentsModel?>(
      selector: (state) => state.commentsModelObj,
      builder: (context, commentsModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.v),
              child: SizedBox(
                width: 382.h,
                child: Divider(
                  height: 2.v,
                  thickness: 2.v,
                  color: theme.colorScheme.secondaryContainer,
                ),
              ),
            );
          },
          itemCount: commentsModelObj?.commentlistItemList.length ?? 0,
          itemBuilder: (context, index) {
            CommentlistItemModel model =
                commentsModelObj?.commentlistItemList[index] ??
                    CommentlistItemModel();
            return CommentlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCommentBox(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 39.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<CommentsBloc, CommentsState,
                TextEditingController?>(
              selector: (state) => state.commentController,
              builder: (context, commentController) {
                return CustomTextFormField(
                  controller: commentController,
                  hintText: "lbl_write_a_comment".tr,
                  textInputAction: TextInputAction.done,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillSecondaryContainer,
                  fillColor: theme.colorScheme.secondaryContainer,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup9143,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
