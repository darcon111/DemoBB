import 'package:demobb/modules/Login/Widgets/ButtonSubmitWidget.dart';
import 'package:demobb/modules/Login/Widgets/ButtonResetWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class ButtonsBottomLoginWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final bool isDesktop;

  const ButtonsBottomLoginWidget(
      {super.key, required this.formKey, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return isDesktop
            ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ButtonResetWidget(),
                ButtonSubmitWidget(formKey: formKey),
              ])
            : Column(mainAxisSize: MainAxisSize.min, children: [
                ButtonSubmitWidget(formKey: formKey),
                SizedBox(height: 16),
                ButtonResetWidget()
              ]);
  }
}
