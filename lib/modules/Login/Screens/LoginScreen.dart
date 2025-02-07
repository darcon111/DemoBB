import 'package:demobb/modules/Login/Views/LoginView.dart';
import 'package:demobb/shared/forms/Blocs/generic_input_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This the widget where the BLoC states and events are handled.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GenericInputBloc(),
        ),
      ],
      child: LoginView());
  }
}
