import 'package:demobb/pages/Ubicacion.dart';
import 'package:demobb/pages/buro.dart';
import 'package:demobb/pages/comprobante.dart';
import 'package:demobb/pages/confirmar.dart';
import 'package:demobb/pages/consumo.dart';
import 'package:demobb/pages/home.dart';
import 'package:demobb/pages/login.dart';
import 'package:demobb/pages/otp.dart';
import 'package:demobb/pages/product-choice.dart';
import 'package:demobb/pages/mapa.dart';
import 'package:demobb/pages/simulator.dart';
import 'package:demobb/pages/transferencia.dart';
import 'package:demobb/pages/webView.dart';
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
        return _fadeRoute( HomePage(), '/' );
      case '/Login':
        return _fadeRoute(LoginPage(), '/');
      case '/Simulator':
        return _fadeRoute(SimulatorPage(), '/');
      case '/Otp':
        return _fadeRoute(OtpPage(), '/');
      case '/ProductChoice':
        return _fadeRoute(ProductChoicePage(), '/');
      case '/Transferir':
        return _fadeRoute(TransferenciaPage(), '/');
      case '/Confirmar':
        return _fadeRoute( ConfirmarPage(), '/' );
      case '/Comprobante':
        return _fadeRoute( ComprobantePage(), '/' );
      case '/Ubicacion':
        return _fadeRoute( UbicacionPage(), '/' );
      case '/Mapa':
        return _fadeRoute( MapaPage(), '/' );
      case '/WebViewPage':
        return _fadeRoute( WebViewPage(), '/' );
      case '/BuroPage':
        return _fadeRoute( BuroPage(), '/' );
      case '/ConsumoPage':
        return _fadeRoute( ConsumoPage(), '/' );

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: Duration(milliseconds: 200),
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                child: child,
                linearTransition: true));
  }
}
