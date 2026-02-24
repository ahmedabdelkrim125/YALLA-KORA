import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:yalla_kora/features/signup/data/model/signup_request_body.dart';
import 'package:yalla_kora/features/signup/logic/signup_cubit.dart';
import 'package:yalla_kora/features/signup/ui/widgets/account_type.dart';
import 'package:yalla_kora/features/signup/ui/widgets/custom_phone_filed.dart';

import '../../../../core/helper/helper_functions/build_snack_bar.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/helper/validation.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/custom_text_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late final PhoneController phoneController;
  late final TextEditingController emailController;
  late final TextEditingController ageController;
  late final TextEditingController cityController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  String selectedGender = '';
  String selectedAccountType = 'اختر نوع الحساب';

  @override
  void initState() {
    phoneController = PhoneController(initialValue: PhoneNumber.parse('+20'));
    emailController = TextEditingController();
    ageController = TextEditingController();
    cityController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    emailController.dispose();
    ageController.dispose();
    cityController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void accountTypeSelected(String result) {
    selectedAccountType = result;
    selectedGender = result == 'لاعب' ? 'male' : 'owner';
    setState(() {});
  }

  String _calculateBirthdate() {
    if (ageController.text.trim().isEmpty) return '';

    final age = int.tryParse(ageController.text.trim());
    if (age == null) return '';

    final now = DateTime.now();
    final birthYear = now.year - age;
    return '$birthYear-01-01';
  }

  void _handleSignup() {
    final isFormValid = _key.currentState!.validate();
    final isAccountTypeValid = selectedAccountType != 'اختر نوع الحساب';

    if (!isAccountTypeValid) {
      buildSnackBar(
        context: context,
        text: 'من فضلك اختر نوع الحساب',
        color: Colors.red,
      );
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      buildSnackBar(
        context: context,
        text: 'كلمة المرور غير متطابقة',
        color: Colors.red,
      );
      return;
    }

    if (isFormValid && isAccountTypeValid) {
      final signupRequestBody = SignupRequestBody(
        phone: phoneController.value.international,
        email: emailController.text.trim(),
        name: cityController.text.trim(),
        gender: selectedGender,
        birthdate: _calculateBirthdate(),
        password: passwordController.text.trim(),
      );

      context.read<SignupCubit>().emitSignupStates(signupRequestBody);
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          AccountType(
            onSelected: accountTypeSelected,
            text: selectedAccountType,
          ),
          verticalSpace(context, height: 23),
          CustomAppPhoneFormField(phoneController: phoneController),
          verticalSpace(context, height: 7),
          CustomTextField(
            text: 'البريد الالكتروني',
            controller: emailController,
            validator: AppValidator.validateEmail,
          ),
          verticalSpace(context, height: 7),
          CustomTextField(
            text: 'العمر',
            controller: ageController,
            validator: AppValidator.validateAge,
          ),
          verticalSpace(context, height: 7),
          CustomTextField(
            text: 'المحافظة',
            controller: cityController,
            validator: AppValidator.validateCity,
          ),
          verticalSpace(context, height: 7),
          CustomTextField(
            text: 'الرقم السرى',
            controller: passwordController,
            isPassword: true,
            validator: AppValidator.validatePassword,
          ),
          verticalSpace(context, height: 7),
          CustomTextField(
            text: 'تأكيد الرقم السرى',
            controller: confirmPasswordController,
            isPassword: true,
            validator: AppValidator.validatePassword,
          ),
          verticalSpace(context, height: 23),
          AppButton(title: 'التالي', onPressed: _handleSignup),
        ],
      ),
    );
  }
}
