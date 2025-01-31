import 'package:demobb/modules/Login/Views/LoginView.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginView();
  }
}
