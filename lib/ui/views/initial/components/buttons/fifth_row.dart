import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../../config/size_config.dart';
import '../../initial_viewmodel.dart';
import '../colors.dart';
import '../styles.dart';

class FifthRow extends StackedHookView<InitialViewModel> {
  const FifthRow({super.key});
  @override
  Widget builder(BuildContext context, InitialViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          shape: const CircleBorder(),
          onPressed: () {
            model.onBtnTapped('00');
          },
          child: Text(
            '00',
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
            model.onBtnTapped('0');
          },
          child: Text(
            '0',
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
            model.onTap('.');
          },
          child: Icon(
            Icons.square,
            color:
                model.isDark ? AppColors.darkButtonColor : AppColors.iconColor,
            size: 12,
          ),
        ),
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          color: AppColors.darkBackColor,
          shape: const CircleBorder(),
          onPressed: () {
            model.outputValue();
          },
          child: Text(
            '=',
            style: AppStyles.buttonStyle.copyWith(
                color: model.isDark
                    ? AppColors.darkButtonColor
                    : AppColors.iconColor),
          ),
        ),
      ],
    );
  }
}
