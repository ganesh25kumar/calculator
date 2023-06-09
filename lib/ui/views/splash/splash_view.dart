import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'splash_viewmodel.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(SplashViewModel viewModel) => viewModel.onReady();

  @override
  Widget builder(
    BuildContext context,
    SplashViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Image.asset('assets/icons/calculator.png'),
      ),
    );
  }

  @override
  SplashViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SplashViewModel();
}
