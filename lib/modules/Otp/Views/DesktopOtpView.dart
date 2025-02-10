import 'package:demobb/modules/Otp/Widgets/GenericOtpWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class DesktopOtpView extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final ScrollController _scrollController = ScrollController();

  DesktopOtpView({super.key, required this.formKey});

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
          controller: _scrollController,
          child: Container(
              width: 604,
              height: 484,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(32),
              child: GenericOtpWidget(formKey: formKey, isDesktop: true)),
        ),
      ),
    );
  }
}
