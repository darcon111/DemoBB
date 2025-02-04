import 'package:demobb/modules/Login/Widget/ButtonSubmitWidget.dart';
import 'package:demobb/modules/Login/Widget/ButtonResetWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class ButtonsBottomLoginWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final bool isDesktop;

  const ButtonsBottomLoginWidget(
      {super.key, required this.formKey, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: isDesktop
            ? Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ButtonResetWidget(),
                ButtonSubmitWidget(formKey: formKey),
              ])
            : Column(children: [
                ButtonSubmitWidget(formKey: formKey),
                SizedBox(height: 16),
                ButtonResetWidget()
              ]));
  }
}
