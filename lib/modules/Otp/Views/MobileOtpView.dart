import 'package:demobb/modules/Otp/Widgets/GenericOtpWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class MobileOtpView extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const MobileOtpView({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          child: GenericOtpWidget(formKey: formKey, isDesktop: false)),
    );
  }
}
