import 'package:demobb/modules/Otp/Views/DesktopOtpView.dart';
import 'package:demobb/modules/Otp/Views/MobileOtpView.dart';
import 'package:demobb/shared/Header/HeaderWidget.dart';
import 'package:demobb/shared/methods/methods.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class OtpView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: HeaderWidget(key: Key('Otp'),isDesktop: isDesktop(context), automaticallyImplyLeading: false, logoutButton: true),
          body: isDesktop(context)
              ? DesktopOtpView(formKey: formKey)
              : MobileOtpView(formKey: formKey)),
    );
  }
}
