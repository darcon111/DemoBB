import 'package:demobb/modules/ProductChoice/Blocs/ProductChoice/product_choice_bloc.dart';
import 'package:demobb/modules/ProductChoice/Views/ProductChoiceView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This the widget where the BLoC states and events are handled.
class ProductChoiceScreen extends StatelessWidget {
  const ProductChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => ProductChoiceBloc()),
    ], child: ProductChoiceView());
  }
}
