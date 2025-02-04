import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class ButtonSubmitWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const ButtonSubmitWidget({super.key, required this.formKey});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF008392),
          ),
          onPressed: () {
            print('OASODALSAD');
            Navigator.pushNamed(context,'/Simulator');
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
