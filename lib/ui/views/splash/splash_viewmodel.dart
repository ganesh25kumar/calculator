import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todo/app/app.locator.dart';
import 'package:todo/app/app.router.dart';

class SplashViewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  onReady() {
    Future.delayed(const Duration(milliseconds: 3),
        () => _navService.clearStackAndShow(Routes.initialView));
  }
}
