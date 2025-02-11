import 'package:demobb/modules/Simulator/Widgets/ButtonsSubmitWidget.dart';
import 'package:demobb/modules/Simulator/Widgets/GenericSimulatorWidget.dart';
import 'package:demobb/shared/Header/StepperWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class MobileSimulatorView extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const MobileSimulatorView({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
          child: Column(
            children: [
              StepperWidget(selected: 1, total: 6, isDesktop: false,),
              GenericSimulatorWidget(formKey: formKey),
              ButtonsSubmitWidget(formKey: formKey, page: '/ProductChoice', isDesktop: false,)
            ],
          )),
    );
  }
}
