import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/core/utils/validation_functions.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_elevated_button.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_text_form_field.dart';
import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
        create: (context) => LogInBloc(LogInState(logInModelObj: LogInModel()))
          ..add(LogInInitialEvent()),
        child: LogInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurpleA200,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 16.h, top: 79.v, right: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _buildPageTitle(context),
                                  SizedBox(height: 33.v),
                                  BlocSelector<LogInBloc, LogInState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.emailController,
                                      builder: (context, emailController) {
                                        return CustomTextFormField(
                                            controller: emailController,
                                            hintText: "lbl_email_id".tr,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .tr;
                                              }
                                              return null;
                                            });
                                      }),
                                  SizedBox(height: 24.v),
                                  BlocBuilder<LogInBloc, LogInState>(
                                      builder: (context, state) {
                                    return CustomTextFormField(
                                        controller: state.passwordController,
                                        hintText: "lbl_password".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              context.read<LogInBloc>().add(
                                                  ChangePasswordVisibilityEvent(
                                                      value: !state
                                                          .isShowPassword));
                                            },
                                            child: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 13.v, 16.h, 13.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgAntdesigneyeinvisiblefilled,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize))),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 50.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        obscureText: state.isShowPassword,
                                        contentPadding: EdgeInsets.only(
                                            left: 16.h,
                                            top: 15.v,
                                            bottom: 15.v));
                                  }),
                                  SizedBox(height: 27.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword(context);
                                      },
                                      child: Text("msg_forgot_password".tr,
                                          style: CustomTextStyles
                                              .bodyLargePrimary)),
                                  SizedBox(height: 30.v),
                                  CustomElevatedButton(
                                      text: "lbl_log_in".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 47.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(26.h, 10.v, 364.h, 10.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPageTitle(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_welcome_to_social".tr,
          style: CustomTextStyles.headlineLargePrimary),
      SizedBox(height: 12.v),
      Text("msg_please_enter_your".tr, style: CustomTextStyles.bodyLargePrimary)
    ]);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
