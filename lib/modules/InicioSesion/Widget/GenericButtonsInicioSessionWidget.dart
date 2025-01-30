import 'package:demobb/modules/InicioSesion/Views/DesktopViewInicioSesion.dart';
import 'package:demobb/modules/InicioSesion/Views/MobileInicioSesionView.dart';
import 'package:demobb/modules/InicioSesion/Widget/InicioSesionWidget.dart';
import 'package:demobb/modules/InicioSesion/Widget/OlvideContraseniaWidget.dart';
import 'package:demobb/shared/forms/generic_input.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class GenericButtonInicioSessionWidget extends StatelessWidget {
  GlobalKey<FormState> formKey;
  final bool isDesktop;

  GenericButtonInicioSessionWidget(
      {super.key, required this.formKey, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return isDesktop
        ? Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            OlvideContraseniaWidget(),
            BotonInicioSesionWidget(formKey: formKey),
          ])
        : Column(children: [
            BotonInicioSesionWidget(formKey: formKey),
            SizedBox(height: 16),
            OlvideContraseniaWidget()
          ]);
  }
}
