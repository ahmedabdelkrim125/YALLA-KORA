import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yalla_kora/core/di/dependency_injection.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'yalla_kora.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.darkBackground,
      statusBarIconBrightness: Brightness.light, // Android (icons white)
      statusBarBrightness: Brightness.dark, // iOS
    ),
  );

  setupGetIt();
  runApp(const YallaKora());
}
