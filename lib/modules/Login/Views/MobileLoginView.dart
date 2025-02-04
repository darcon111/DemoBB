import 'package:demobb/modules/Login/Widget/GenericLoginWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class MobileLoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const MobileLoginView({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
        child: GenericLoginWidget(formKey: formKey));
  }
}
