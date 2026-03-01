import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/features/login/logic/login_cubit.dart';
import 'package:yalla_kora/features/login/ui/widgets/login_bloc_listener.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/helper/validation.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final LoginCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<LoginCubit>();
  }

  @override
  void dispose() {
    cubit.emailController.dispose();
    cubit.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailField(context),
          verticalSpace(context, height: 10),
          _buildPasswordField(context),
          verticalSpace(context, height: 14),
          AppButton(
            title: 'التالي',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                cubit.emitLoginStates();
              }
            },
          ),
          const LoginBlocListener(),
        ],
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
            'رقم الهاتف او البريد الالكتروني',
            style: TextStyles.mediumWhite12,
          ),
        ),
        verticalSpace(context, height: 5),
        AppFormField(
          controller: cubit.emailController,
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
          child: Text('الرقم السري', style: TextStyles.mediumWhite12),
        ),
        verticalSpace(context, height: 5),
        AppFormField(
          isPassword: true,
          controller: cubit.passwordController,
          validator: AppValidator.validatePassword,
        ),
      ],
    );
  }
}
