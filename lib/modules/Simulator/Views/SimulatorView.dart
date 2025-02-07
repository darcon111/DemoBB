import 'package:demobb/modules/Simulator/Views/DesktopSimulatorView.dart';
import 'package:demobb/modules/Simulator/Views/MobileSimulatorView.dart';
import 'package:demobb/shared/Header/HeaderWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class SimulatorView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final String user = '';
  final String password = '';
  final bool isHidden = false;

  SimulatorView({super.key});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: HeaderWidget(isDesktop: isDesktop(context)),
        body: isDesktop(context)
            ? DesktopSimulatorView(formKey: formKey)
            : MobileSimulatorView(formKey: formKey));
  }
}
