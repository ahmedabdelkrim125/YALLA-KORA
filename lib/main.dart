import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yalla_kora/core/di/dependency_injection.dart';
import 'yalla_kora.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,  // Android
    statusBarBrightness: Brightness.dark,        // iOS
  ));

  setupGetIt();
  runApp(const ProviderScope(child: YallaKora()));
}

