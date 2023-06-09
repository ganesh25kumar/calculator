import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import '../../../../config/size_config.dart';
import '../../initial_viewmodel.dart';
import '../colors.dart';
import '../styles.dart';

class FirstRow extends StackedHookView<InitialViewModel> {
  const FirstRow({super.key});
  @override
  Widget builder(BuildContext context, InitialViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          shape: const CircleBorder(),
          onPressed: () {
            model.clearInputAndOutput();
          },
          child: Text(
            'AC',
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
            model.deleteBtnAction();
          },
          child: Icon(
            Icons.backspace_outlined,
            color: model.isDark
                ? AppColors.darkButtonColor
                : AppColors.lightIconColor,
          ),
        ),
        MaterialButton(
            height: 6 * SizeConfig.heightMultiplier!,
            shape: const CircleBorder(),
            onPressed: () {
              model.onTap('%');
            },
            child: Text(
              '%',
              style: AppStyles.buttonStyle.copyWith(
                  color: model.isDark
                      ? AppColors.darkButtonColor
                      : AppColors.iconColor),
            )),
        MaterialButton(
          height: 6 * SizeConfig.heightMultiplier!,
          color: model.isDark ? AppColors.darkBgColor : AppColors.lightBgColor,
          shape: const CircleBorder(),
          child: Text(
            '÷',
            style: AppStyles.buttonStyle.copyWith(
                color: model.isDark
                    ? AppColors.darkButtonColor
                    : AppColors.iconColor),
          ),
          onPressed: () {
            model.onTap('/');
          },
        ),
      ],
    );
  }
}
