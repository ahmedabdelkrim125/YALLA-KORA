// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// SizedBox verticalSpace({required double height}) => SizedBox(height: height.h);
// SizedBox horizontalSpace({required double width}) => SizedBox(width: width.w);

import 'package:flutter/material.dart';
import 'package:appointment_app/core/helper/responsive_extensions.dart';

SizedBox verticalSpace(BuildContext context, {required double height}) => 
  SizedBox(height: height.h(context));

SizedBox horizontalSpace(BuildContext context, {required double width}) => 
  SizedBox(width: width.w(context));