import 'package:demobb/modules/ProductChoice/Widgets/AccountsWidget.dart';
import 'package:demobb/shared/Header/StepperWidget.dart';
import 'package:demobb/shared/HeaderHelperWidget.dart';
import 'package:flutter/material.dart';

class GenericProductChoiceWidget extends StatelessWidget {
  final bool isDesktop;
  const GenericProductChoiceWidget({super.key, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        StepperWidget(
          selected: 3,
          total: 6,
          isDesktop: true,
        ),
        HeaderHelperWidget(title: 'Elige uno de tus productos'),
        AccountsWidget(isDesktop: isDesktop)
      ],
    );
  }
}
