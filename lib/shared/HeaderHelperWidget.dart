import 'package:flutter/material.dart';

class HeaderHelperWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  const HeaderHelperWidget({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, spacing: 8, children: [
      Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: TextStyle(
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w600,
              fontSize: 28,
              color: Color(0xFF212529)),
        ),
      ),
      if (subtitle != null)
        SizedBox(
          width: double.infinity,
          child: Text(
            subtitle!,
            style: TextStyle(
              color: Color(0xFF495057),
              fontSize: 14,
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
        )
    ]);
  }
}
