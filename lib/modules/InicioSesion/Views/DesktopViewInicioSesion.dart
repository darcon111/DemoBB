import 'package:demobb/modules/InicioSesion/Views/InicioSesionView.dart';
import 'package:demobb/modules/InicioSesion/Widget/GenericInicioSesionWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This the widget where the BLoC states and events are handled.
class DesktopInicioSesionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(top:44),
      decoration: BoxDecoration(
        color: Color(0xFFEDEEF3)
      ),
      child: Align(
        alignment: Alignment.topCenter,
        
        child: Container(
          width: 604,
          height: 424,
          child: GenericInicioSesionWidget(),
        ),
      ),
    );
  }
}
