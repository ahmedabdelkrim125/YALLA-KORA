import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:yalla_kora/features/signup/data/model/signup_request_body.dart';
import 'package:yalla_kora/features/signup/logic/signup_cubit.dart';
import 'package:yalla_kora/features/signup/ui/widgets/custom_phone_filed.dart';

import '../../../../core/helper/helper_functions/build_snack_bar.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/helper/validation.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/custom_text_field.dart';

class SignupForm extends StatefulWidget {
  final String accountRole;

  const SignupForm({super.key, required this.accountRole});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late final PhoneController phoneController;
  late final TextEditingController nameController;
  late final TextEditingController ageController;
  late final TextEditingController stadiumNameController;
  late final TextEditingController governorateController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  bool get isPlayer => widget.accountRole == 'player';

  @override
  void initState() {
    phoneController = PhoneController(initialValue: PhoneNumber.parse('+20'));
    nameController = TextEditingController();
    ageController = TextEditingController();
    stadiumNameController = TextEditingController();
    governorateController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    nameController.dispose();
    ageController.dispose();
    stadiumNameController.dispose();
    governorateController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
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
    if (passwordController.text != confirmPasswordController.text) {
      buildSnackBar(
        context: context,
        text: 'كلمة المرور غير متطابقة',
        color: Colors.red,
      );
      return;
    }

    final isFormValid = _key.currentState!.validate();

    if (isFormValid) {
      final signupRequestBody = SignupRequestBody(
        phone: '0${phoneController.value.nsn}',
        name: nameController.text.trim(),
        governorate: governorateController.text.trim(),
        age: isPlayer ? ageController.text.trim() : null,
        fieldName: isPlayer ? null : stadiumNameController.text.trim(),
        role: isPlayer ? 'player' : 'owner',
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
          CustomTextField(
            text: 'اسمك',
            controller: nameController,
            validator: AppValidator.validateName,
          ),
          verticalSpace(context, height: 7),
          CustomAppPhoneFormField(phoneController: phoneController),
          verticalSpace(context, height: 7),
          if (isPlayer)
            CustomTextField(
              text: 'العمر',
              controller: ageController,
              validator: AppValidator.validateAge,
            )
          else
            CustomTextField(
              text: 'اسم ملعبك',
              controller: stadiumNameController,
              validator: AppValidator.validateName,
            ),
          verticalSpace(context, height: 7),
          CustomTextField(
            text: 'المحافظة',
            controller: governorateController,
            validator: AppValidator.validateCity,
          ),
          verticalSpace(context, height: 7),
          CustomTextField(
            text: 'الرقم السري',
            controller: passwordController,
            isPassword: true,
            validator: AppValidator.validatePassword,
          ),
          verticalSpace(context, height: 7),
          CustomTextField(
            text: 'تأكيد الرقم السري',
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
