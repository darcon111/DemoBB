import 'package:demobb/modules/ProductChoice/Views/DesktopProductChoiceView.dart';
import 'package:demobb/modules/ProductChoice/Views/MobileProductChoiceView.dart';
import 'package:demobb/shared/Header/HeaderWidget.dart';
import 'package:demobb/shared/methods/methods.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class ProductChoiceView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final bool isHidden = false;

  ProductChoiceView({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: HeaderWidget(isDesktop: isDesktop(context)),
          body: isDesktop(context)
              ? DesktopProductChoiceView(formKey: formKey)
              : MobileProductChoiceView(formKey: formKey)),
    );
  }
}
