

import 'package:demobb/modules/InicioSesion/Views/DesktopViewInicioSesion.dart';
import 'package:demobb/modules/InicioSesion/Views/MobileInicioSesionView.dart';
import 'package:demobb/shared/forms/generic_input.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class InicioSesionView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? usuario;
  String? contrasenia;
  bool isHidden = false;

  InicioSesionView({super.key});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('widget.title'),
        ),
        body: isDesktop(context) ? DesktopInicioSesionView(): MobileInicioSesionView()
        ); }
}
