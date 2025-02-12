import 'package:demobb/modules/Simulator/Views/DesktopSimulatorView.dart';
import 'package:demobb/modules/Simulator/Views/MobileSimulatorView.dart';
import 'package:demobb/shared/Header/HeaderWidget.dart';
import 'package:demobb/shared/methods/methods.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class SimulatorView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SimulatorView({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: HeaderWidget(key: Key('Simulator'),isDesktop: isDesktop(context), automaticallyImplyLeading: true, logoutButton: true),
          body: isDesktop(context)
              ? DesktopSimulatorView(formKey: formKey)
              : MobileSimulatorView(formKey: formKey)),
    );
  }
}
