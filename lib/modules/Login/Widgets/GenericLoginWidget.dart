import 'package:demobb/modules/Login/Widgets/ButtonsBottomLoginWidget.dart';
import 'package:demobb/shared/HeaderHelperWidget.dart';
import 'package:demobb/shared/forms/GenericInputWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class GenericLoginWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final bool isDesktop;
  const GenericLoginWidget({super.key, required this.formKey, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(children: [
        HeaderHelperWidget(title: 'Inicia sesión'),
        GenericInputWidget(
            textLabel: 'Usuario',
            obscureText: false,
            onSaved: (value) {}), //usuario = value),
        GenericInputWidget(
            textLabel: 'Contraseña',
            hiddenOption: true,
            obscureText: true,
            onSaved: (value) => {}), //contrasenia = value),

        ButtonsBottomLoginWidget(
            formKey: formKey, isDesktop: isDesktop)
      ]),
    );
  }
}
