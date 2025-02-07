import 'package:demobb/modules/Login/Widgets/ButtonsBottomLoginWidget.dart';
import 'package:demobb/shared/forms/generic_input.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class GenericLoginWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const GenericLoginWidget({super.key, required this.formKey});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    return Form(
            key: formKey,
            child: Column(
              children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Inicia sesión',
                    style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w600),
                  )),
              GenericInput(
                  textLabel: 'Usuario',
                  obscureText: false,
                  onSaved: (value) {}), //usuario = value),
              GenericInput(
                  textLabel: 'Contraseña',
                  hiddenOption: true,
                  obscureText: true,
                  onSaved: (value) => {}), //contrasenia = value),

              ButtonsBottomLoginWidget(
                  formKey: formKey, isDesktop: isDesktop(context))
            ]),
        );
  }
}
