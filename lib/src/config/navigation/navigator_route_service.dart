import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folder_structure/src/config/constants/app_constants.dart';
import 'package:folder_structure/src/config/constants/route_constants.dart';
import 'package:folder_structure/src/ui/home_page.dart';

class NavigationRouteManager {
  static Route<dynamic> onRouteGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case k_ROUTE_HOME:
        return _navigateToDefault(HomePage(title: k_APP_NAME), settings);
      case k_ROUTE_MENU:
        var routeArgs = settings.arguments;
        return _navigateToDefault(HomePage(title: routeArgs), settings);
      default:
        return _navigateToDefault(HomePage(title: k_APP_NAME), settings);
    }
  }

  NavigationRouteManager._init();

  static _navigateToDefault(Widget page, RouteSettings settings) {
    if (Platform.isIOS)
      return CupertinoPageRoute(builder: (context) => page, settings: settings);
    else
      return MaterialPageRoute(builder: (context) => page, settings: settings);
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error Route'),
        ),
        body: Center(
          child: Text('Route cannot find.'),
        ),
      );
    });
  }

  static Route<dynamic> onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Unknown Route'),
        ),
        body: Center(
          child: Text('Route unknown.'),
        ),
      );
    });
  }
}
