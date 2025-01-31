import 'package:demobb/pages/login.dart';
import 'package:demobb/pages/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
   print("settings.name${settings.name}");

    switch (settings.name) {
      case '/Main':
        return _fadeRoute( MainPage(), '/stateful' );
      case '/Login':
        return _fadeRoute( LoginPage(), '/stateful' );

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }

  static PageRoute _fadeRoute( Widget child, String routeName ) {


    return PageRouteBuilder(
        settings: RouteSettings(name:  routeName ),
        pageBuilder: ( _, __, ___ ) => child,
        transitionDuration: Duration( milliseconds: 200 ),
        transitionsBuilder: ( _, animation, __, ___ ) =>
        (kIsWeb)
            ? FadeTransition(
          opacity: animation,
          child: child,
        )
            : CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: __, child: child, linearTransition: true)
    );

  }

}
