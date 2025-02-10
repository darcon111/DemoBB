import 'package:demobb/modules/ProductChoice/Widgets/GenericProductChoiceWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class MobileProductChoiceView extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const MobileProductChoiceView({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 16, right: 16, top: 16),
        child: GenericProductChoiceWidget(isDesktop: false,));
  }
}
