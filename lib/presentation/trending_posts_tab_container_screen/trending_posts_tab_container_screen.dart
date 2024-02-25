import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/discover_page/discover_page.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/messages_page/messages_page.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/notifications_page/notifications_page.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/profile_page/profile_page.dart';
import 'package:dhiwise_flutter_social_networking_app/presentation/trending_posts_page/trending_posts_page.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_bottom_bar.dart';
import 'bloc/trending_posts_tab_container_bloc.dart';
import 'models/trending_posts_tab_container_model.dart';

class TrendingPostsTabContainerScreen extends StatefulWidget {
  const TrendingPostsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TrendingPostsTabContainerScreenState createState() =>
      TrendingPostsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingPostsTabContainerBloc>(
      create: (context) =>
          TrendingPostsTabContainerBloc(TrendingPostsTabContainerState(
        trendingPostsTabContainerModelObj: TrendingPostsTabContainerModel(),
      ))
            ..add(TrendingPostsTabContainerInitialEvent()),
      child: TrendingPostsTabContainerScreen(),
    );
  }
}

class TrendingPostsTabContainerScreenState
    extends State<TrendingPostsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              _buildTabview(context),
              SizedBox(
                height: 662.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    TrendingPostsPage.builder(context),
                    TrendingPostsPage.builder(context),
                    DiscoverPage.builder(context),
                    DiscoverPage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: BlocSelector<TrendingPostsTabContainerBloc,
          TrendingPostsTabContainerState, TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search".tr,
            controller: searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup9086,
          margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 30.v,
      width: 398.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.deepPurpleA200,
        unselectedLabelColor: appTheme.indigo100,
        tabs: [
          Tab(
            child: Text(
              "lbl_trending".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_latest".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_discover".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_daily_new".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Streams:
        return "/";
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.messagesPage:
        return MessagesPage.builder(context);
      case AppRoutes.notificationsPage:
        return NotificationsPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
