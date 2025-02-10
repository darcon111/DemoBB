import 'package:demobb/modules/Otp/Blocs/CountDown/count_down_bloc.dart';
import 'package:demobb/modules/Otp/Views/OtpView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This the widget where the BLoC states and events are handled.
class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => CountDownBloc()),
    ], child: OtpView());
  }
}
