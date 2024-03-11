import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/invite_friends_screen/invite_friends_screen.dart';
import '../presentation/daily_new_tab_container_screen/daily_new_tab_container_screen.dart';
import '../presentation/trending_tab_container_screen/trending_tab_container_screen.dart';
import '../presentation/stories_container_screen/stories_container_screen.dart';
import '../presentation/trending_posts_tab_container_screen/trending_posts_tab_container_screen.dart';
import '../presentation/stories_and_tweets_screen/stories_and_tweets_screen.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/live_screen/live_screen.dart';
import '../presentation/for_you_screen/for_you_screen.dart';
import '../presentation/page_view_screen/page_view_screen.dart';
import '../presentation/comments_screen/comments_screen.dart';
import '../presentation/account_view_screen/account_view_screen.dart';
import '../presentation/account_details_screen/account_details_screen.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/friends_screen/friends_screen.dart';
import '../presentation/detailed_profile_screen/detailed_profile_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String logInScreen = '/log_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String notificationScreen = '/notification_screen';

  static const String inviteFriendsScreen = '/invite_friends_screen';

  static const String discoverPage = '/discover_page';

  static const String dailyNewPage = '/daily_new_page';

  static const String dailyNewTabContainerScreen =
      '/daily_new_tab_container_screen';

  static const String trendingPage = '/trending_page';

  static const String trendingTabContainerScreen =
      '/trending_tab_container_screen';

  static const String storiesPage = '/stories_page';

  static const String storiesContainerScreen = '/stories_container_screen';

  static const String trendingPostsPage = '/trending_posts_page';

  static const String trendingPostsTabContainerScreen =
      '/trending_posts_tab_container_screen';

  static const String storiesAndTweetsScreen = '/stories_and_tweets_screen';

  static const String searchScreen = '/search_screen';

  static const String liveScreen = '/live_screen';

  static const String forYouScreen = '/for_you_screen';

  static const String pageViewScreen = '/page_view_screen';

  static const String commentsScreen = '/comments_screen';

  static const String accountViewScreen = '/account_view_screen';

  static const String accountDetailsScreen = '/account_details_screen';

  static const String messagesPage = '/messages_page';

  static const String chatScreen = '/chat_screen';

  static const String friendsScreen = '/friends_screen';

  static const String notificationsPage = '/notifications_page';

  static const String profilePage = '/profile_page';

  static const String detailedProfileScreen = '/detailed_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        logInScreen: LogInScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        signUpScreen: SignUpScreen.builder,
        notificationScreen: NotificationScreen.builder,
        inviteFriendsScreen: InviteFriendsScreen.builder,
        dailyNewTabContainerScreen: DailyNewTabContainerScreen.builder,
        trendingTabContainerScreen: TrendingTabContainerScreen.builder,
        storiesContainerScreen: StoriesContainerScreen.builder,
        trendingPostsTabContainerScreen:
            TrendingPostsTabContainerScreen.builder,
        storiesAndTweetsScreen: StoriesAndTweetsScreen.builder,
        searchScreen: SearchScreen.builder,
        liveScreen: LiveScreen.builder,
        forYouScreen: ForYouScreen.builder,
        pageViewScreen: PageViewScreen.builder,
        commentsScreen: CommentsScreen.builder,
        accountViewScreen: AccountViewScreen.builder,
        accountDetailsScreen: AccountDetailsScreen.builder,
        chatScreen: ChatScreen.builder,
        friendsScreen: FriendsScreen.builder,
        detailedProfileScreen: DetailedProfileScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
