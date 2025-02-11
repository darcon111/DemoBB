import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class ButtonContinueWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String page;

  const ButtonContinueWidget({super.key, required this.formKey, required this.page});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF008392),
      ),
      onPressed: () {
        print('OASODALSAD');
        Navigator.pushNamed(context, this.page);
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
