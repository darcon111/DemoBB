import 'package:demobb/modules/Simulador/Widget/ButtonsSubmitWidget.dart';
import 'package:demobb/modules/Simulador/Widget/GenericSimulatorWidget.dart';
import 'package:demobb/shared/Header/StepperWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class DesktopSimulatorView extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const DesktopSimulatorView({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(top: 44),
      decoration: BoxDecoration(color: Color.fromRGBO(237, 238, 243, 1)),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: 604,
            height: 484,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(32),
                child: Column(
                  children: [
                    StepperWidget(),
                    GenericSimulatorWidget(formKey: formKey),
                    ButtonsSubmitWidget(formKey: formKey)
                  ],
                ))),
      ),
    );
  }
}
