import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gastawallet/generated/l10n.dart';
import 'package:gastawallet/src/constants/routes.dart';
import 'package:gastawallet/src/theme/custom_theme.dart';
import 'routes.dart';
import 'view_model/view.abs.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      navigatorObservers: [routeObserver],
      initialRoute: RoutesConstant.splashScreen,
      onGenerateRoute: _router.route,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
