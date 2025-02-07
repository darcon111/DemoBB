import 'package:demobb/modules/Simulator/Blocs/Simulator/simulator_bloc.dart';
import 'package:demobb/modules/Simulator/Views/SimulatorView.dart';
import 'package:demobb/modules/Simulator/Blocs/Months/months_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This the widget where the BLoC states and events are handled.
class SimulatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MonthsBloc(),
        ),
        BlocProvider(
          create: (context) => SimulatorBloc(),
        ),
      ],
      child: SimulatorView(),
    );
  }
}
