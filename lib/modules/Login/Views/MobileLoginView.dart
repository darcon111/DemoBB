import 'package:demobb/modules/Login/Widgets/GenericLoginWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class MobileLoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final ScrollController _scrollController = ScrollController();

  MobileLoginView({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        controller: _scrollController,
          child: Container(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
              child: GenericLoginWidget(formKey: formKey))),
    );
  }
}
