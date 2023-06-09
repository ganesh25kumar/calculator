import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import '../../../../config/size_config.dart';
import '../../initial_viewmodel.dart';
import '../colors.dart';
import '../styles.dart';

class ThirdRow extends StackedHookView<InitialViewModel> {
  const ThirdRow({super.key});
  @override
  Widget builder(BuildContext context, InitialViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          shape: const CircleBorder(),
          onPressed: () {
            model.onBtnTapped('4');
          },
          child: Text(
            '4',
            style: AppStyles.buttonStyle.copyWith(
                color: model.isDark
                    ? AppColors.darkButtonColor
                    : AppColors.iconColor),
          ),
        ),
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          shape: const CircleBorder(),
          onPressed: () {
            model.onBtnTapped('5');
          },
          child: Text(
            '5',
            style: AppStyles.buttonStyle.copyWith(
                color: model.isDark
                    ? AppColors.darkButtonColor
                    : AppColors.iconColor),
          ),
        ),
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          shape: const CircleBorder(),
          onPressed: () {
            model.onBtnTapped('6');
          },
          child: Text(
            '6',
            style: AppStyles.buttonStyle.copyWith(
                color: model.isDark
                    ? AppColors.darkButtonColor
                    : AppColors.iconColor),
          ),
        ),
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          color: model.isDark ? AppColors.darkBgColor : AppColors.lightBgColor,
          shape: const CircleBorder(),
          child: Text(
            '-',
            style: AppStyles.buttonStyle.copyWith(
                color: model.isDark
                    ? AppColors.darkButtonColor
                    : AppColors.iconColor),
          ),
          onPressed: () {
            model.onTap('-');
          },
        ),
      ],
    );
  }
}
