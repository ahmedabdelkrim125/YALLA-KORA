import 'package:flutter/material.dart';

import '../../theme/text_styles.dart';

void buildSnackBar({
  required BuildContext context,
  required String text,
  int durationInSec = 3,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text, style: TextStyles.mediumWhite14),
      duration: Duration(seconds: durationInSec),
      backgroundColor: color,
    ),
  );
}
