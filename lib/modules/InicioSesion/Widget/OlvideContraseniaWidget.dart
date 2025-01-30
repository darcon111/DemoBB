import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class OlvideContraseniaWidget extends StatelessWidget {
  OlvideContraseniaWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(bottom: 16, top: 16),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            overlayColor: Colors.red,
            elevation: 0.0),
        onPressed: () {
          print('evento');
        },
        child: Text(
          'Olvidé mi usuario o contraseña',
          style: TextStyle(color: Color(0xFF008392)),
        ));
  }
}
