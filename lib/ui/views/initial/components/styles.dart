import 'package:flutter/material.dart';

import '../../../config/size_config.dart';
import 'colors.dart';

class AppStyles {
  static TextStyle textStyle = TextStyle(
    fontSize: 4 * SizeConfig.textMultiplier!,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5 * SizeConfig.widthMultiplier!,
    color: AppColors.darkButtonColor,
  );
  static TextStyle fieldStyle1 = TextStyle(
      fontSize: 6 * SizeConfig.textMultiplier!,
      color: AppColors.darkButtonColor);
  static TextStyle fieldStyle2 = TextStyle(
      fontSize: 6 * SizeConfig.textMultiplier!,
      color: AppColors.darkButtonColor);
  static TextStyle buttonStyle = TextStyle(
    fontSize: 3 * SizeConfig.textMultiplier!,
    color: AppColors.darkColor,
  );
  static TextStyle buttonStyle2 = TextStyle(
    fontSize: 3 * SizeConfig.textMultiplier!,
    color: AppColors.darkButtonColor,
    fontWeight: FontWeight.w400,
  );
}
