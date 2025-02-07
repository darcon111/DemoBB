import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class ButtonContinueWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const ButtonContinueWidget({super.key, required this.formKey});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF008392),
      ),
      onPressed: () {
        print('OASODALSAD');
        Navigator.pushNamed(context, '/Main');
        if (formKey.currentState != null && formKey.currentState!.validate()) {
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
            'Continuar'),
      ),
    );
  }
}
