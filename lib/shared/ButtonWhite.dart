import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class ButtonWhiteWidget extends StatelessWidget {

  String texto;
  VoidCallback onPressed;

  ButtonWhiteWidget({super.key, required this.texto, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(width: MediaQuery.of(context).size.width,
          height: 48, child:
      ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36), // Bordes redondeados
            side: BorderSide(color: Color(0xFF008392), width: 1.5), // Borde azul de 2px
          )
      ),
      onPressed: onPressed,
      child: Text(
        texto,
        style: TextStyle(
          color: Color(0xFF424242),
          fontSize: 16,
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w500,
        ),
      ),
    ));
  }
}
