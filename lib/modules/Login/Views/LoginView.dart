import 'package:demobb/modules/Login/Views/DesktopLoginView.dart';
import 'package:demobb/modules/Login/Views/MobileLoginView.dart';
import 'package:demobb/shared/Header/HeaderWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class LoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final String user = '';
  final String password = '';
  final bool isHidden = false;

  LoginView({super.key});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: HeaderWidget(isDesktop: isDesktop(context)),
            body: isDesktop(context)
                ? DesktopLoginView(formKey: formKey)
                : MobileLoginView(formKey: formKey)));
  }
}
