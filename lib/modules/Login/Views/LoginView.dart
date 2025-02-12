import 'package:demobb/modules/Login/Views/DesktopLoginView.dart';
import 'package:demobb/modules/Login/Views/MobileLoginView.dart';
import 'package:demobb/shared/Header/HeaderWidget.dart';
import 'package:demobb/shared/methods/methods.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class LoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final String user = '';
  final String password = '';
  final bool isHidden = false;

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
            appBar: HeaderWidget(key: Key('Login'),isDesktop: isDesktop(context), automaticallyImplyLeading:false, logoutButton:false),
            body: isDesktop(context)
                ? DesktopLoginView(formKey: formKey)
                : MobileLoginView(formKey: formKey));
  }
}
