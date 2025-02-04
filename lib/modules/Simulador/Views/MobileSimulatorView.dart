import 'package:demobb/modules/Simulador/Widget/ButtonsSubmitWidget.dart';
import 'package:demobb/modules/Simulador/Widget/GenericSimulatorWidget.dart';
import 'package:demobb/shared/Header/StepperWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class MobileSimulatorView extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const MobileSimulatorView({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
        child: Column(
          children: [
            StepperWidget(),
            GenericSimulatorWidget(formKey: formKey),
            ButtonsSubmitWidget(formKey: formKey, page: '/Main',)
          ],
        ));
  }
}
