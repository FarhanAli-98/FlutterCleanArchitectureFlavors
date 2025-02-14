import 'package:nomixe/flavors.dart';
import 'package:nomixe/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/app_builder.dart';
import 'app/providers/multi_providers.dart';
import 'config/app_theme.dart';
import 'config/locator.dart';
import 'config/router/app_router.dart';
import 'config/router/custom_navigator_observer.dart';
import 'config/scroll_behaviour.dart';
import 'data/source/local/hive_database.dart';
import 'data/source/local/shared_pref.dart';
import 'presentation/notifiers/connection.notifier.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProviders(
      child: MaterialApp.router(
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        title: F.title,
        builder: (context, widget) {
          return AppBuilder(
            widget: widget!,
          );
        },
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
        backButtonDispatcher: AppRouter.router.backButtonDispatcher,
      ),
    );
  }
}
