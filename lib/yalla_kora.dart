import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class YallaKora extends StatelessWidget {
  const YallaKora({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ProviderScope(
          child: MaterialApp(
            theme: ThemeData(
              fontFamily: 'Cairo',
              scaffoldBackgroundColor: AppColors.darkBackground,
              appBarTheme: const AppBarTheme(
                backgroundColor: AppColors.darkBackground,
                elevation: 0,
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  statusBarIconBrightness: Brightness.light, // ← Android
                  statusBarBrightness: Brightness.dark,       // ← iOS
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: Routes.splashScreen,
          ),
        );
      },
    );
  }
}
