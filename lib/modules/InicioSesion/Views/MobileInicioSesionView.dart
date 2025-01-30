import 'package:demobb/modules/InicioSesion/Views/InicioSesionView.dart';
import 'package:demobb/modules/InicioSesion/Widget/GenericInicioSesionWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This the widget where the BLoC states and events are handled.
class MobileInicioSesionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenericInicioSesionWidget();
  }
}
