import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

void buildSnackBar({required BuildContext context,required String text, int durationInSec = 3, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, style: TextStyles.mediumWhite14,),
        duration: Duration(seconds: durationInSec),
        backgroundColor: color,
      )
  );
}