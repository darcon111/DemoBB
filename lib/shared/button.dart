import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class ButtonWidget extends StatelessWidget {

  String texto;
  VoidCallback onPressed;

  ButtonWidget({super.key, required this.texto, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return

      SizedBox(width: MediaQuery.of(context).size.width,height: 48, child:
    ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF008392),
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16)
      ),
      onPressed: onPressed,
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w500,
        ),
      ),
    ));
  }
}
