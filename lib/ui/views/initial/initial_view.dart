import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../config/size_config.dart';
import 'components/colors.dart';
import 'components/divider.dart';
import 'components/styles.dart';
import 'components/textfield.dart';
import 'initial_viewmodel.dart';

class InitialView extends StackedView<InitialViewModel> {
  const InitialView({super.key});

  @override
  InitialViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InitialViewModel();

  @override
  Widget builder(context, viewModel, child) {
    return Scaffold(
      backgroundColor:
          viewModel.isDark ? AppColors.darkBgColor : AppColors.lightBgColor,
      appBar: AppBar(
        backgroundColor:
            viewModel.isDark ? AppColors.darkBgColor : AppColors.lightBgColor,
        elevation: 0,
        title: Text(
          'Calculator',
          style: AppStyles.textStyle.copyWith(
              color: viewModel.isDark
                  ? AppColors.darkButtonColor
                  : AppColors.iconColor),
        ),
        actions: [
          PopupMenuButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))),
            color: viewModel.isDark
                ? AppColors.darkButtonColor
                : AppColors.darkIconColor,
            itemBuilder: (context) => [
              PopupMenuItem(
                  onTap: () => viewModel.changeTheme(),
                  child: viewModel.isDark
                      ? const Icon(
                          Icons.light_mode,
                          color: AppColors.darkIconColor,
                        )
                      : const Icon(
                          Icons.dark_mode,
                          color: AppColors.darkButtonColor,
                        )),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          const Column(
            children: [
              InputTextField(),
              Divide(),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 31.7 * SizeConfig.heightMultiplier!),
            color: viewModel.isDark
                ? AppColors.darkColor
                : AppColors.lightButtonColor,
            child: GridView.count(
              padding: EdgeInsets.only(
                  top: 0.5 * SizeConfig.heightMultiplier!,
                  bottom: 0.5 * SizeConfig.heightMultiplier!,
                  left: 4 * SizeConfig.widthMultiplier!,
                  right: 4 * SizeConfig.widthMultiplier!),
              crossAxisCount: 4,
              crossAxisSpacing: 8 * SizeConfig.widthMultiplier!,
              mainAxisSpacing: 3.6 * SizeConfig.heightMultiplier!,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.clearInputAndOutput();
                  },
                  child: Text(
                    'AC',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.deleteBtnAction();
                  },
                  child: Icon(
                    Icons.backspace_outlined,
                    color: viewModel.isDark
                        ? AppColors.darkButtonColor
                        : AppColors.lightIconColor,
                  ),
                ),
                MaterialButton(
                    height: 6 * SizeConfig.heightMultiplier!,
                    shape: const CircleBorder(),
                    onPressed: () {
                      viewModel.onTap('%');
                    },
                    child: Text(
                      '%',
                      style: AppStyles.buttonStyle.copyWith(
                          color: viewModel.isDark
                              ? AppColors.darkButtonColor
                              : AppColors.iconColor),
                    )),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  color: viewModel.isDark
                      ? AppColors.lightBgColor
                      : AppColors.lightColor,
                  shape: const CircleBorder(),
                  child: Text(
                    '÷',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.iconColor
                            : AppColors.iconColor),
                  ),
                  onPressed: () {
                    viewModel.onTap('/');
                  },
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('7');
                  },
                  child: Text(
                    '7',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('8');
                  },
                  child: Text(
                    '8',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('9');
                  },
                  child: Text(
                    '9',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  color: viewModel.isDark
                      ? AppColors.lightBgColor
                      : AppColors.lightColor,
                  shape: const CircleBorder(),
                  child: Text(
                    'x',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.iconColor
                            : AppColors.iconColor),
                  ),
                  onPressed: () {
                    viewModel.onTap('x');
                  },
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('4');
                  },
                  child: Text(
                    '4',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('5');
                  },
                  child: Text(
                    '5',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('6');
                  },
                  child: Text(
                    '6',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  color: viewModel.isDark
                      ? AppColors.lightBgColor
                      : AppColors.lightColor,
                  shape: const CircleBorder(),
                  child: Text(
                    '-',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.iconColor
                            : AppColors.iconColor),
                  ),
                  onPressed: () {
                    viewModel.onTap('-');
                  },
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('1');
                  },
                  child: Text(
                    '1',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('2');
                  },
                  child: Text(
                    '2',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('3');
                  },
                  child: Text(
                    '3',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  color: viewModel.isDark
                      ? AppColors.lightBgColor
                      : AppColors.lightColor,
                  child: Text(
                    '+',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.iconColor
                            : AppColors.iconColor),
                  ),
                  onPressed: () {
                    viewModel.onTap('+');
                  },
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('00');
                  },
                  child: Text(
                    '00',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onBtnTapped('0');
                  },
                  child: Text(
                    '0',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.onTap('.');
                  },
                  child: Icon(
                    Icons.square,
                    color: viewModel.isDark
                        ? AppColors.darkButtonColor
                        : AppColors.iconColor,
                    size: 12,
                  ),
                ),
                MaterialButton(
                  height: 6 * SizeConfig.heightMultiplier!,
                  color: AppColors.darkBackColor,
                  shape: const CircleBorder(),
                  onPressed: () {
                    viewModel.outputValue();
                  },
                  child: Text(
                    '=',
                    style: AppStyles.buttonStyle.copyWith(
                        color: viewModel.isDark
                            ? AppColors.darkButtonColor
                            : AppColors.iconColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
