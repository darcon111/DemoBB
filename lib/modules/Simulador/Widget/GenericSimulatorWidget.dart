import 'package:demobb/modules/Simulador/Widget/AmountWidget.dart';
import 'package:demobb/modules/Simulador/Widget/MonthsWidget.dart';
import 'package:demobb/modules/Simulador/Widget/ResultWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class GenericSimulatorWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const GenericSimulatorWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Expanded(
            child: RawScrollbar(
                thumbVisibility: true, // Mostrar siempre el scrollbar
                thickness: 4, // Grosor del scrollbar
                radius: Radius.circular(8), // Bordes redondeados
                thumbColor: Colors.transparent,
                trackColor: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 24,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Calcula los pagos de tu crédito',
                            style: TextStyle(
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w600,
                                fontSize: 28,
                                color: Color(0xFF212529)),
                          ),
                        ),
                        AmountWidget(
                          formKey: formKey,
                        ),
                        MonthsWidget(
                          formKey: formKey,
                        ),
                        ResultWidget(formKey: formKey),
                      ]),
                ))));
  }
}
