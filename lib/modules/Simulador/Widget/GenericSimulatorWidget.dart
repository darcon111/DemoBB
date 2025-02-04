import 'package:demobb/modules/Simulador/Blocs/simulador_bloc.dart';
import 'package:demobb/modules/Simulador/Widget/AmountWidget.dart';
import 'package:demobb/modules/Simulador/Widget/MonthsWidget.dart';
import 'package:demobb/modules/Simulador/Widget/ResultWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This the widget where the BLoC states and events are handled.
class GenericSimulatorWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final ScrollController _scrollController = ScrollController();

  GenericSimulatorWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Expanded(
            child: RawScrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                thickness: 4,
                radius: Radius.circular(8),
                thumbColor: Colors.transparent,
                trackColor: Colors.transparent,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.vertical,
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
                        BlocProvider(
                          create: (context) => SimuladorBloc(),
                          child: ResultWidget(formKey: formKey),
                        )
                      ]),
                ))));
  }
}
