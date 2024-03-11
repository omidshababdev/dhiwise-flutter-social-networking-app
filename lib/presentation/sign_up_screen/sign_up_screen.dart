import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_social_networking_app/core/app_export.dart';
import 'package:dhiwise_flutter_social_networking_app/core/utils/validation_functions.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_elevated_button.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_radio_button.dart';
import 'package:dhiwise_flutter_social_networking_app/widgets/custom_text_form_field.dart';
import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
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
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 37.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_create_a_new_account".tr,
                      style: CustomTextStyles.headlineLargePrimary,
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "msg_it_s_fast_and_easy".tr,
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                    SizedBox(height: 21.v),
                    _buildFirstNameColumn(context),
                    SizedBox(height: 16.v),
                    _buildEmail(context),
                    SizedBox(height: 16.v),
                    _buildPhone(context),
                    SizedBox(height: 16.v),
                    _buildDateOfBirth(context),
                    SizedBox(height: 26.v),
                    Text(
                      "lbl_gender".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 8.v),
                    _buildGenderRadioGroup(context),
                    SizedBox(height: 42.v),
                    Container(
                      width: 367.h,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        right: 5.h,
                      ),
                      child: Text(
                        "msg_by_clicking_register".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    _buildSignUpButton(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 47.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(26.h, 10.v, 364.h, 10.v),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFirstNameRow(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
          selector: (state) => state.firstNameRowController,
          builder: (context, firstNameRowController) {
            return CustomTextFormField(
              controller: firstNameRowController,
              hintText: "lbl_first_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLastNameRow(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
          selector: (state) => state.lastNameRowController,
          builder: (context, lastNameRowController) {
            return CustomTextFormField(
              controller: lastNameRowController,
              hintText: "lbl_last_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameColumn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFirstNameRow(context),
        _buildLastNameRow(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "lbl_email_id".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.phoneController,
      builder: (context, phoneController) {
        return CustomTextFormField(
          controller: phoneController,
          hintText: "lbl_phone_no".tr,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.dateOfBirthController,
      builder: (context, dateOfBirthController) {
        return CustomTextFormField(
          controller: dateOfBirthController,
          hintText: "lbl_date_of_birth".tr,
          textInputAction: TextInputAction.done,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgCalendartoday,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 50.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 16.h,
            top: 15.v,
            bottom: 15.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGenderRadioGroup(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return state.signUpModelObj!.radioList.isNotEmpty
            ? Row(
                children: [
                  CustomRadioButton(
                    text: "lbl_female".tr,
                    value: state.signUpModelObj?.radioList[0] ?? "",
                    groupValue: state.genderRadioGroup,
                    padding: EdgeInsets.fromLTRB(8.h, 14.v, 30.h, 14.v),
                    onChange: (value) {
                      context
                          .read<SignUpBloc>()
                          .add(ChangeRadioButtonEvent(value: value));
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: CustomRadioButton(
                      text: "lbl_male".tr,
                      value: state.signUpModelObj?.radioList[1] ?? "",
                      groupValue: state.genderRadioGroup,
                      padding: EdgeInsets.fromLTRB(8.h, 14.v, 30.h, 14.v),
                      onChange: (value) {
                        context
                            .read<SignUpBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}
