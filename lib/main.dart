import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:folder_structure/src/config/constants/app_constants.dart';
import 'package:folder_structure/src/config/constants/route_constants.dart';
import 'package:folder_structure/src/config/navigation/navigation_service.dart';
import 'package:folder_structure/src/config/navigation/navigator_route_service.dart';
import 'package:folder_structure/src/config/theme/custom_theme.dart';
import 'package:folder_structure/src/provider/providers.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        initialRoute: k_ROUTE_HOME,
        onGenerateRoute: NavigationRouteManager.onRouteGenerate,
        onUnknownRoute: NavigationRouteManager.onUnknownRoute,
        navigatorKey: NavigationService.instance.navigatorKey,
        debugShowCheckedModeBanner: false,
        locale: Locale('tr', ''),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('tr'),
        ],
        title: k_APP_NAME,
        theme: CustomTheme.theme,
      ),
    );
  }
}
