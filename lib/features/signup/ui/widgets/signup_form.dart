import 'package:appointment_app/core/helper/helper_functions/build_snack_bar.dart';
import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/core/helper/validation.dart';
import 'package:appointment_app/core/widgets/app_button.dart';
import 'package:appointment_app/core/widgets/custom_text_field.dart';
import 'package:appointment_app/features/signup/ui/widgets/account_type.dart';
import 'package:appointment_app/features/signup/ui/widgets/custom_phone_filed.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

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

  String text = 'اختر نوع الحساب';
  void accountTypeSelected(String result) {
    text = result;
    setState(() {});
  }

  void _handleSignup() {
    final isFormValid = _key.currentState!.validate();
    final isAccountTypeValid = text != 'اختر نوع الحساب';

    if (!isAccountTypeValid) {
      buildSnackBar(
        context: context,
        text: 'من فضلك اختر نوع الحساب',
        color: Colors.red,
      );
    }

    if (isFormValid && isAccountTypeValid) {

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
          AccountType(onSelected: accountTypeSelected, text: text,),
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
          AppButton(
            title: 'التالي',
            onPressed: _handleSignup,
          ),
        ],
      ),
    );
  }
}