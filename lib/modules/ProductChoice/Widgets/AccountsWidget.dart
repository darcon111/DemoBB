import 'package:demobb/modules/ProductChoice/Blocs/ProductChoice/product_choice_bloc.dart';
import 'package:demobb/modules/ProductChoice/Widgets/ProductCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List accounts = [
  {
    'helperText': false,
    'tittle': 'Cuenta ahorros',
    'dinero': '\$1,290.98',
    'imagen1': '/img/share.svg',
    'imagen2': '/img/eyes.svg',
  },
  {
    'helperText': true,
    'tittle': 'Bankard Visa',
    'dinero': '\$102.57',
    'imagen1': '/img/credit.svg',
    'imagen2': '/img/eyes.svg',
  }
];

// This the widget where the BLoC states and events are handled.
class AccountsWidget extends StatelessWidget {
  final bool isDesktop;
  const AccountsWidget(
      {super.key, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductChoiceBloc, ProductChoiceState>(
      builder: (context, state) {
        final isLoading = state is ProductChoiceInitial;
        return Container(
          padding: EdgeInsets.only(top: 24, bottom: 24),
          child: isDesktop
              ? GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 151,
                  ),
                  itemCount: accounts.length,
                  itemBuilder: (context, index) {
                    return ProductCardWidget(
                      isDesktop: isDesktop,
                      isLoading: isLoading,
                      helperText: accounts[index]['helperText'],
                      tittle: accounts[index]['tittle'],
                      dinero: accounts[index]['dinero'],
                      imagen1: accounts[index]['imagen1'],
                      imagen2: accounts[index]['imagen2'],
                    );
                  })
              : Column(
                  spacing: 24,
                  children: accounts.map((account) {
                    return ProductCardWidget(
                      isDesktop: isDesktop,
                      isLoading: isLoading,
                      helperText: account['helperText'],
                      tittle: account['tittle'],
                      dinero: account['dinero'],
                      imagen1: account['imagen1'],
                      imagen2: account['imagen2'],
                    );
                  }).toList()),
        );
      },
    );
  }
}
