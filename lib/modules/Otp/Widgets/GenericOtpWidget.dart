import 'package:demobb/modules/Otp/Widgets/NumbersOtpWidget.dart';
import 'package:demobb/modules/Otp/Widgets/TimerWidget.dart';
import 'package:demobb/shared/Header/StepperWidget.dart';
import 'package:demobb/shared/HeaderHelperWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class GenericOtpWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final bool isDesktop;

  const GenericOtpWidget({super.key, required this.formKey, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StepperWidget(
            selected: 6,
            total: 6,
            isDesktop: isDesktop,
          ),
          HeaderHelperWidget(
            title: 'Ingresa el código temporal',
            subtitle: 'Hemos enviado un código a tu celular 09****8529',
          ),
          NumbersOtpWidget(
            formKey: formKey,
            widthPersonalized: isDesktop ? 336 : double.infinity,
            heightPersonalized: isDesktop ? 48 : 0,
          ),
          TimerWidget()
        ],
      ),
    );
  }
}
