import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/app_colors.dart';
import '../helper/responsive_extensions.dart';
import '../theme/text_styles.dart';

class AppFormField extends StatefulWidget {
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? textHint;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const AppFormField({
    super.key,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters, this.textHint,
  });

  @override
  State<AppFormField> createState() => _AppFormFieldState();
}

class _AppFormFieldState extends State<AppFormField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w(context)),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: widget.isPassword ? _obscure : false,
        style: TextStyles.mediumWhite14,

        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,

        decoration: InputDecoration(
          hintText: widget.textHint,
          hintStyle: TextStyles.regularSlateGray12,

          contentPadding: EdgeInsets.symmetric(
            vertical: 18.h(context),
            horizontal: 20.w(context),
          ),

          prefixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  icon: Icon(
                    _obscure ? Icons.visibility_off : Icons.visibility,
                    color: _obscure ? Colors.white : AppColors.primaryGreen,
                  ),
                )
              : null,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r(context)),
            borderSide: const BorderSide(color: Colors.white, width: 1.5),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r(context)),
            borderSide: const BorderSide(color: Colors.white, width: 1.5),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r(context)),
            borderSide: const BorderSide(
              color: AppColors.primaryGreen,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
