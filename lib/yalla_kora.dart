import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class YallaKora extends StatelessWidget {
  const YallaKora({super.key});

  @override
  Widget build(BuildContext context) {
    // Keep ScreenUtilInit only for font sizes
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.darkBackground,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: AppColors.darkBackground,
                statusBarIconBrightness: Brightness.light, // Android
                statusBarBrightness: Brightness.dark, // iOS
              ),
            ),
            fontFamily: 'Cairo',
            scaffoldBackgroundColor: AppColors.darkBackground,
            textTheme: Typography.material2018().white.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: Routes.mainScreen,
        );
      },
    );
  }
}
