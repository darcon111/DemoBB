import 'package:demobb/modules/Login/Widgets/GenericLoginWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class DesktopLoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const DesktopLoginView({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(top: 44),
      decoration: BoxDecoration(color: Color.fromRGBO(237, 238, 243, 1)),
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
            child: Container(
          width: 604,
          height: 424,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(32),
          child: GenericLoginWidget(
            formKey: formKey,
            isDesktop: true,
          ),
        )),
      ),
    );
  }
}
