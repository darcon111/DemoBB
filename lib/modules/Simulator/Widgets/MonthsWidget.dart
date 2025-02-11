import 'package:demobb/modules/Simulator/Blocs/Months/months_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        child: BlocBuilder<MonthsBloc, MonthsState>(
          builder: (context, state) {
            print('nuevo rebuild');
            return Row(
                children: state.meses.map((item) {
              return Expanded(
                child: TextButton(
                    onPressed: () {
                      context.read<MonthsBloc>().add(OnTapMonth(mes: item));
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      width: double.infinity,
                      decoration: ShapeDecoration(
                          color:
                              item.selected ? Color(0XFFDAEFED) : Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: item.selected
                                      ? Color(0xFF8CCFC7)
                                      : Color(0XFFCED4DA)))),
                      child: Text(
                        item.label,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF212529),
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    )),
              );
            }).toList());
          },
        ),
      )
    ]);
  }
}
