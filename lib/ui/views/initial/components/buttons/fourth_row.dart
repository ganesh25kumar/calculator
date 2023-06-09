import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import '../../../../config/size_config.dart';
import '../../initial_viewmodel.dart';
import '../colors.dart';
import '../styles.dart';

class FourthRow extends StackedHookView<InitialViewModel> {
  const FourthRow({super.key});
  @override
  Widget builder(BuildContext context, InitialViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          shape: const CircleBorder(),
          onPressed: () {
            model.onBtnTapped('1');
          },
          child: Text(
            '1',
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
            model.onBtnTapped('2');
          },
          child: Text(
            '2',
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
            model.onBtnTapped('3');
          },
          child: Text(
            '3',
            style: AppStyles.buttonStyle.copyWith(
                color: model.isDark
                    ? AppColors.darkButtonColor
                    : AppColors.iconColor),
          ),
        ),
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          shape: const CircleBorder(),
          color: model.isDark ? AppColors.darkBgColor : AppColors.lightBgColor,
          child: Text(
            '+',
            style: AppStyles.buttonStyle.copyWith(
                color: model.isDark
                    ? AppColors.darkButtonColor
                    : AppColors.iconColor),
          ),
          onPressed: () {
            model.onTap('+');
          },
        )
      ],
    );
  }
}
