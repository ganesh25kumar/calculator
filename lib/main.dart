import 'package:flutter/material.dart';
import 'package:todo/app/app.bottomsheets.dart';
import 'package:todo/app/app.dialogs.dart';
import 'package:todo/app/app.locator.dart';
import 'package:todo/app/app.router.dart';
import 'package:todo/ui/common/app_colors.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todo/ui/config/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (context, constraints) =>
          OrientationBuilder(builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Calculator',
              theme: Theme.of(context).copyWith(
                primaryColor: kcBackgroundColor,
                focusColor: kcPrimaryColor,
                textTheme: Theme.of(context).textTheme.apply(
                      bodyColor: Colors.black,
                    ),
              ),
              initialRoute: Routes.splashView,
              onGenerateRoute: StackedRouter().onGenerateRoute,
              navigatorKey: StackedService.navigatorKey,
              navigatorObservers: [
                StackedService.routeObserver,
              ],
            );
          }));
}
