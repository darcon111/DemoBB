import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class MonthsWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const MonthsWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 8, children: [
      Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Meses a pagar',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color(0xFF495057),
                fontSize: 16,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
                height: 1.50),
          )),
      SizedBox(
          width: double.infinity,
          child: Expanded(
              flex: 3,
              child: Row(children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.only(top: 12, bottom: 12),
                          width: double.infinity,
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0XFFCED4DA)))),
                          child: Text(
                            '12',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF212529),
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                        ))),
                Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.only(top: 12, bottom: 12),
                          width: double.infinity,
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0XFFCED4DA)))),
                          child: Text(
                            '24',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF212529),
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                        ))),
                Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.only(top: 12, bottom: 12),
                          width: double.infinity,
                          decoration: ShapeDecoration(
                              color: Color(0XFFDAEFED),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFF8CCFC7)))),
                          child: Text(
                            '36',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF212529),
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                        ))),
              ])))
    ]);
  }
}
