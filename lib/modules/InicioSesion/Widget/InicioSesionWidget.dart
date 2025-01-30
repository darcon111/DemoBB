import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class BotonInicioSesionWidget extends StatelessWidget {
  GlobalKey<FormState> formKey;

  BotonInicioSesionWidget({super.key, required this.formKey});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF008392),
          ),
          onPressed: () {
            if (formKey.currentState != null &&
                formKey.currentState!.validate()) {
              formKey.currentState?.save();
              print(formKey.currentState?.toString());
            }
          },
          child: const Center(
            child: Text(
                style: TextStyle(
                    fontFamily: 'Lexend',
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                'Iniciar Sesión'),
          ),
        ));
  }
}
