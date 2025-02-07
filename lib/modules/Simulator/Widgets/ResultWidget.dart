import 'package:demobb/modules/Simulator/Blocs/Simulator/simulator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This the widget where the BLoC states and events are handled.
class ResultWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const ResultWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 8, children: [
      Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Resultado de la simulación',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color(0xFF495057),
                fontSize: 16,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
                height: 1.50),
          )),
      Padding(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Monto a recibir',
                  style: TextStyle(
                      color: Color(0xFF495057),
                      fontSize: 16,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      height: 1.50),
                ),
                Text(
                  '\$9,950.22',
                  style: TextStyle(
                      color: Color(0xFF212529),
                      fontSize: 16,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      height: 1.50),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cuota mensual',
                  style: TextStyle(
                      color: Color(0xFF495057),
                      fontSize: 16,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      height: 1.50),
                ),
                Text(
                  '\$540.89',
                  style: TextStyle(
                      color: Color(0xFF212529),
                      fontSize: 16,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      height: 1.50),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tasa de interés',
                  style: TextStyle(
                      color: Color(0xFF495057),
                      fontSize: 16,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      height: 1.50),
                ),
                Text(
                  '15.20%',
                  style: TextStyle(
                      color: Color(0xFF212529),
                      fontSize: 16,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      height: 1.50),
                )
              ],
            ),
            BlocBuilder<SimulatorBloc, bool>(builder: (context, state) {
              return state
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Impuesto SOLCA',
                              style: TextStyle(
                                  color: Color(0xFF495057),
                                  fontSize: 16,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50),
                            ),
                            Text(
                              '-\$10.02',
                              style: TextStyle(
                                  color: Color(0xFF212529),
                                  fontSize: 16,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Monto total a pagar',
                              style: TextStyle(
                                  color: Color(0xFF495057),
                                  fontSize: 16,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50),
                            ),
                            Text(
                              '\$13,289.89',
                              style: TextStyle(
                                  color: Color(0xFF212529),
                                  fontSize: 16,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50),
                            )
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(bottom: 16, top: 16),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                overlayColor: Colors.transparent,
                                elevation: 0.0),
                            onPressed: () {
                              print('evento');
                              context
                                  .read<SimulatorBloc>()
                                  .add(Showed()); 
                            },
                            child: Text(
                              'Ver menos',
                              style: TextStyle(
                                  color: Color(0xFF008392),
                                  fontSize: 16,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(bottom: 16, top: 16),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          overlayColor: Colors.transparent,
                          elevation: 0.0),
                      onPressed: () {
                        print('evento');
                        context
                            .read<SimulatorBloc>()
                            .add(Showed()); // 📌 Dispara evento
                      },
                      child: Text(
                        'Ver detalles',
                        style: TextStyle(
                            color: Color(0xFF008392),
                            fontSize: 16,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline),
                      ));
            }),
          ],
        ),
      )
    ]);
  }
}
