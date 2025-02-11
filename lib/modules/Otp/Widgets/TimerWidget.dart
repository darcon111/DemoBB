import 'package:demobb/modules/Otp/Widgets/CountDownTimerWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class TimerWidget extends StatelessWidget {
  TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Text(
          'Reenviar código en',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF495057),
            fontSize: 14,
            fontFamily: 'Lexend',
          ),
        ),
        CountDownTimerWidget(timer: 5),
      ],
    );
  }
}
