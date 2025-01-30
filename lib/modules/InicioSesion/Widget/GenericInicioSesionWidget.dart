import 'package:demobb/modules/InicioSesion/Widget/GenericButtonsInicioSessionWidget.dart';
import 'package:demobb/shared/forms/generic_input.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class GenericInicioSesionWidget extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? usuario;
  String? contrasenia;
  bool isHidden = false;

  GenericInicioSesionWidget({super.key});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
            child: Form(
                key: _formKey,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Inicia sesión',
                        style: TextStyle(
                          fontSize: 48,
                          fontFamily: 'Lexend',
                        ),
                      )),
                  GenericInput(
                      textLabel: 'Usuario',
                      onSaved: (value) => usuario = value),
                  GenericInput(
                      textLabel: 'Contraseña',
                      isHidden: isHidden,
                      hiddenOption: true,
                      onSaved: (value) => contrasenia = value),
                  GenericButtonInicioSessionWidget(
                      formKey: _formKey, isDesktop: isDesktop(context))
                ]))));
  }
}
