// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'app_colors.dart';

// class TextStyles {
//   static TextStyle boldWhite20 = TextStyle(
//     fontSize: 20.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle boldWhite18 = TextStyle(
//     fontSize: 18.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle boldWhite16 = TextStyle(
//     fontSize: 16.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle boldWhite15 = TextStyle(
//     fontSize: 15.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle boldWhite14 = TextStyle(
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle boldWhite12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle boldWhite10 = TextStyle(
//     fontSize: 10.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle boldWhite9 = TextStyle(
//     fontSize: 9.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle semiBoldWhite18 = TextStyle(
//     fontSize: 18.sp,
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle semiBoldWhite16 = TextStyle(
//     fontSize: 16.sp,
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle semiBoldWhite10 = TextStyle(
//     fontSize: 10.sp,
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle mediumWhite14 = TextStyle(
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle mediumWhite12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle mediumWhite10 = TextStyle(
//     fontSize: 10.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle mediumWhite8 = TextStyle(
//     fontSize: 8.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//   );

//   static TextStyle regularWhite14 = TextStyle(
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//     height: 1.0,
//   );

//   static TextStyle regularWhite12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//     height: 1.0,
//   );

//   static TextStyle extraBoldWhite24 = TextStyle(
//     fontSize: 24.sp,
//     fontWeight: FontWeight.w800,
//     fontFamily: 'Cairo',
//     color: Colors.white,
//     height: 1.5,
//     letterSpacing: 0.2,
//   );

//   static TextStyle boldDarkBackground18 = TextStyle(
//     fontSize: 18.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: AppColors.darkBackground,
//     height: 1.0,
//   );

//   static TextStyle boldFieldBorder32 = TextStyle(
//     fontSize: 32.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: AppColors.fieldBorder,
//     height: 1.0,
//   );

//   static TextStyle extraBoldDark14 = TextStyle(
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w800,
//     fontFamily: 'Cairo',
//     color: AppColors.darkText,
//     height: 1.5,
//     letterSpacing: 0.2,
//   );

//   static TextStyle semiBoldDark12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Cairo',
//     color: AppColors.darkText,
//     height: 1.75,
//   );

//   static TextStyle regularMuted14 = TextStyle(
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: AppColors.muted,
//     height: 1.50,
//   );

//   static TextStyle regularMuted13 = TextStyle(
//     fontSize: 13.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: AppColors.muted,
//     height: 1.50,
//   );

//   static TextStyle regularMuted12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: AppColors.muted,
//     height: 1.50,
//   );

//   static TextStyle mediumMuted14 = TextStyle(
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Cairo',
//     color: AppColors.muted,
//   );

//   static TextStyle mediumMuted10 = TextStyle(
//     fontSize: 10.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Cairo',
//     color: AppColors.muted,
//     height: 1.50,
//   );

//   static TextStyle mediumGrey12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Cairo',
//     color: AppColors.grey,
//     height: 1.33,
//   );

//   static TextStyle regularGrey12 = regularWhite12.copyWith(
//     color: AppColors.muted,
//   );

//   static TextStyle regularGrey10 = regularWhite12.copyWith(
//     fontSize: 10,
//     color: AppColors.muted,
//   );

//   static TextStyle extraBoldGrey14 = TextStyle(
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w800,
//     fontFamily: 'Cairo',
//     color: AppColors.grey88,
//     height: 1.5,
//     letterSpacing: 0.2,
//   );

//   static TextStyle regularPrimaryGreen14 = TextStyle(
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: AppColors.primaryGreen,
//     height: 1.0,
//   );

//   static TextStyle regularPrimaryGreen12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: AppColors.primaryGreen,
//     height: 1.50,
//   );

//   static TextStyle mediumprimaryGreen12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Cairo',
//     color: AppColors.primaryGreen,
//   );

//   static TextStyle semiBoldPrimaryGreen12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Cairo',
//     color: AppColors.primaryGreen,
//     height: 1.75,
//   );

//   static TextStyle semiBoldCancelRed12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Cairo',
//     color: AppColors.cancelRed,
//     height: 1.75,
//   );

//   static TextStyle mediumCancelRed10 = TextStyle(
//     fontSize: 10.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Cairo',
//     color: AppColors.cancelRed,
//     height: 1.50,
//   );

//   static TextStyle semiBoldRatingOrange12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w600,
//     fontFamily: 'Cairo',
//     color: AppColors.ratingOrange,
//     height: 1.75,
//   );

//   static TextStyle regularSlateGray12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: AppColors.slateGray,
//     height: 1.0,
//   );

//   static TextStyle extraLightLightText12 = TextStyle(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w200,
//     fontFamily: 'Cairo',
//     color: AppColors.lightText,
//     height: 1.0,
//   );

//   static TextStyle regularPrimaryYellow15 = TextStyle(
//     fontSize: 15.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: AppColors.primaryYellow,
//     height: 1.50,
//   );

//   // --- ستايلات أضيفت حديثاً لصفحة Checkout ---

//   static TextStyle boldLightGrayText14 = TextStyle(
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: AppColors.lightGrayText,
//     height: 1.43,
//   );

//   static TextStyle regularSlateGray15 = TextStyle(
//     fontSize: 15.sp,
//     fontWeight: FontWeight.w400,
//     fontFamily: 'Cairo',
//     color: AppColors.slateGray,
//     height: 1.50,
//   );

//   static TextStyle boldPrimaryGreen24 = TextStyle(
//     fontSize: 24.sp,
//     fontWeight: FontWeight.w700,
//     fontFamily: 'Cairo',
//     color: AppColors.primaryGreen,
//     height: 1.50,
//   );

//   static TextStyle extraBoldBlack18 = TextStyle(
//     fontSize: 18.sp,
//     fontWeight: FontWeight.w800,
//     fontFamily: 'Cairo',
//     color: Colors.black,
//     height: 1.56,
//   );
// }
import 'package:flutter/material.dart';
import 'app_colors.dart';

class TextStyles {
  static const TextStyle boldWhite20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle boldWhite18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle boldWhite16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle boldWhite15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle boldWhite14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle boldWhite12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle boldWhite10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle boldWhite9 = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle semiBoldWhite18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle semiBoldWhite16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle semiBoldWhite10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle mediumWhite14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle mediumWhite12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle mediumWhite10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle mediumWhite8 = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static const TextStyle regularWhite14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: Colors.white,
    height: 1.0,
  );
  static const TextStyle regularWhite12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: Colors.white,
    height: 1.0,
  );
  static const TextStyle extraBoldWhite24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    fontFamily: 'Cairo',
    color: Colors.white,
    height: 1.5,
    letterSpacing: 0.2,
  );
  static const TextStyle boldDarkBackground18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: AppColors.darkBackground,
    height: 1.0,
  );
  static const TextStyle boldFieldBorder32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: AppColors.fieldBorder,
    height: 1.0,
  );
  static const TextStyle extraBoldDark14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w800,
    fontFamily: 'Cairo',
    color: AppColors.darkText,
    height: 1.5,
    letterSpacing: 0.2,
  );
  static const TextStyle semiBoldDark12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
    color: AppColors.darkText,
    height: 1.75,
  );
  static const TextStyle regularMuted14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.muted,
    height: 1.50,
  );
  static const TextStyle regularMuted13 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.muted,
    height: 1.50,
  );
  static const TextStyle regularMuted12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.muted,
    height: 1.50,
  );
  static const TextStyle mediumMuted14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: AppColors.muted,
  );
  static const TextStyle mediumMuted10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: AppColors.muted,
    height: 1.50,
  );
  static const TextStyle mediumGrey12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: AppColors.grey,
    height: 1.33,
  );
  static const TextStyle regularGrey12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.muted,
    height: 1.0,
  );
  static const TextStyle regularGrey10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.muted,
    height: 1.0,
  );
  static const TextStyle extraBoldGrey14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w800,
    fontFamily: 'Cairo',
    color: AppColors.grey88,
    height: 1.5,
    letterSpacing: 0.2,
  );
  static const TextStyle regularPrimaryGreen14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.primaryGreen,
    height: 1.0,
  );
  static const TextStyle regularPrimaryGreen12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.primaryGreen,
    height: 1.50,
  );
  static const TextStyle mediumprimaryGreen12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: AppColors.primaryGreen,
  );
  static const TextStyle semiBoldPrimaryGreen12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
    color: AppColors.primaryGreen,
    height: 1.75,
  );
  static const TextStyle semiBoldCancelRed12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
    color: AppColors.cancelRed,
    height: 1.75,
  );
  static const TextStyle mediumCancelRed10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: AppColors.cancelRed,
    height: 1.50,
  );
  static const TextStyle semiBoldRatingOrange12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
    color: AppColors.ratingOrange,
    height: 1.75,
  );
  static const TextStyle regularSlateGray12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.slateGray,
    height: 1.0,
  );
  static const TextStyle extraLightLightText12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w200,
    fontFamily: 'Cairo',
    color: AppColors.lightText,
    height: 1.0,
  );
  static const TextStyle regularPrimaryYellow15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.primaryYellow,
    height: 1.50,
  );
  static const TextStyle regularSlateGray15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.slateGray,
    height: 1.50,
  );
  static const TextStyle boldPrimaryGreen24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: 'Cairo',
    color: AppColors.primaryGreen,
    height: 1.50,
  );
  static const TextStyle extraBoldBlack18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    fontFamily: 'Cairo',
    color: Colors.black,
    height: 1.56,
  );
}
