import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import '../../../config/size_config.dart';
import '../initial_viewmodel.dart';

class Divide extends StackedHookView<InitialViewModel> {
  const Divide({super.key});
  @override
  Widget builder(BuildContext context, InitialViewModel model) {
    return Column(
      children: [
        Divider(
          thickness: 1 * SizeConfig.widthMultiplier!,
          endIndent: 42 * SizeConfig.widthMultiplier!,
          indent: 42 * SizeConfig.widthMultiplier!,
          height: 18 * SizeConfig.heightMultiplier!,
          color: Colors.grey,
        ),
      ],
    );
  }
}
