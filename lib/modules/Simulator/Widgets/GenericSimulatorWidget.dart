import 'package:demobb/modules/Simulator/Widgets/AmountWidget.dart';
import 'package:demobb/modules/Simulator/Widgets/MonthsWidget.dart';
import 'package:demobb/modules/Simulator/Widgets/ResultWidget.dart';
import 'package:demobb/shared/HeaderHelperWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class GenericSimulatorWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  GenericSimulatorWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 24,
            children: [
              HeaderHelperWidget(title: 'Calcula los pagos de tu crédito'),
              AmountWidget(
                formKey: formKey,
              ),
              MonthsWidget(
                formKey: formKey,
              ),
              ResultWidget(formKey: formKey),
            ],
          ),
    );
  }
}
