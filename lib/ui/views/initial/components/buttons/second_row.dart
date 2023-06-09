import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import '../../../../config/size_config.dart';
import '../../initial_viewmodel.dart';
import '../colors.dart';
import '../styles.dart';

class SecondRow extends StackedHookView<InitialViewModel> {
  const SecondRow({super.key});
  @override
  Widget builder(BuildContext context, InitialViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          shape: const CircleBorder(),
          onPressed: () {
            model.onBtnTapped('7');
          },
          child: Text(
            '7',
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
            model.onBtnTapped('8');
          },
          child: Text(
            '8',
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
            model.onBtnTapped('9');
          },
          child: Text(
            '9',
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
            'x',
            style: AppStyles.buttonStyle.copyWith(
                color: model.isDark
                    ? AppColors.darkButtonColor
                    : AppColors.iconColor),
          ),
          onPressed: () {
            model.onTap('x');
          },
        )
      ],
    );
  }
}
