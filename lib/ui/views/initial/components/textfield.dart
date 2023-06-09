import 'package:flutter/material.dart';

import 'package:stacked_hooks/stacked_hooks.dart';
import 'package:todo/ui/views/initial/components/styles.dart';

import '../initial_viewmodel.dart';
import 'colors.dart';

class InputTextField extends StackedHookView<InitialViewModel> {
  const InputTextField({super.key});

  @override
  Widget builder(BuildContext context, InitialViewModel model) {
    return Column(
      children: [
        TextFormField(
          maxLines: 1,
          controller: model.controller,
          textAlign: TextAlign.end,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          readOnly: true,
          style: AppStyles.fieldStyle1.copyWith(
            color:
                model.isDark ? AppColors.lightBgColor : AppColors.lightBgColor,
          ),
        ),
        TextFormField(
          maxLines: 1,
          controller: model.userOutput,
          textAlign: TextAlign.end,
          decoration: const InputDecoration(border: InputBorder.none),
          readOnly: true,
          style: AppStyles.fieldStyle2.copyWith(
              color: model.isDark
                  ? AppColors.lightBgColor
                  : AppColors.lightIconColor),
        ),
      ],
    );
  }
}
