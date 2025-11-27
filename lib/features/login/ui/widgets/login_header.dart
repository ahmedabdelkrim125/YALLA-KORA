import 'package:appointment_app/core/helper/responsive_extensions.dart';
import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/core/helper/validation.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:appointment_app/core/widgets/app_button.dart';
import 'package:appointment_app/core/widgets/app_form_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
    }
  }

  void _handleForgotPassword() {
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildWelcomeText(context),
          verticalSpace(context, height: 8),
          _buildEmailField(context),
          verticalSpace(context, height: 10),
          _buildPasswordField(context),
          _buildForgotPasswordButton(context),
          AppButton(
            title: 'التالي',
            onPressed: _handleLogin,
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeText(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w(context)),
        child: Text('مرحباً بعودتك', style: TextStyles.boldWhite16),
      ),
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w(context)),
          child: Text(
            'البريد الإلكترونى',
            style: TextStyles.mediumWhite12,
          ),
        ),
        verticalSpace(context, height: 5),
        AppFormField(
          isPassword: false,
          controller: _emailController,
          validator: AppValidator.validateEmail,
        ),
      ],
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w(context)),
          child: Text('كلمة السر', style: TextStyles.mediumWhite12),
        ),
        verticalSpace(context, height: 5),
        AppFormField(
          isPassword: true,
          controller: _passwordController,
          validator: AppValidator.validatePassword,
        ),
      ],
    );
  }

  Widget _buildForgotPasswordButton(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 14.h(context),
          horizontal: 26.w(context),
        ),
        child: TextButton(
          onPressed: _handleForgotPassword,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'نسيت كلمة المرور ؟',
            style: TextStyles.mediumprimaryGreen12,
          ),
        ),
      ),
    );
  }
}