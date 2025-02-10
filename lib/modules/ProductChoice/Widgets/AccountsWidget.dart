import 'package:demobb/modules/ProductChoice/Widgets/ProductCardWidget.dart';
import 'package:flutter/material.dart';

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
  },
];

// This the widget where the BLoC states and events are handled.
class AccountsWidget extends StatelessWidget {
  final bool isDesktop;
  const AccountsWidget({super.key, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: isDesktop
        ? GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: accounts.length,
            itemBuilder: (context, index) {
              return ProductCardWidget(
                isDesktop: isDesktop,
                isLoading: false,
                helperText: false,
                tittle: accounts[index]['tittle'],
                dinero: accounts[index]['dinero'],
                imagen1: accounts[index]['imagen1'],
                imagen2: accounts[index]['imagen2'],
              );
            })
        : Column(
            children: accounts.map((account) {
            return Container();
          }).toList()),
    );
  }
}
