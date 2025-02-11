import 'package:demobb/modules/ProductChoice/Blocs/ProductChoice/product_choice_bloc.dart';
import 'package:demobb/modules/ProductChoice/Widgets/AccountsWidget.dart';
import 'package:demobb/modules/ProductChoice/Widgets/GraphicModelWidget.dart';
import 'package:demobb/shared/Header/StepperWidget.dart';
import 'package:demobb/shared/HeaderHelperWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenericProductChoiceWidget extends StatelessWidget {
  final bool isDesktop;
  const GenericProductChoiceWidget({super.key, required this.isDesktop});
  @override
  Widget build(BuildContext context) {
  context.read<ProductChoiceBloc>().add(Showed());

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 0,
      children: [
        StepperWidget(
          selected: 3,
          total: 6,
          isDesktop: true,
        ),
        HeaderHelperWidget(title: 'Elige uno de tus productos'),
        AccountsWidget(isDesktop: isDesktop),
        GraphicModelWidget()
      ],
    );
  }
}
