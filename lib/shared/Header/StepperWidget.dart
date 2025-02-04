import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget implements PreferredSizeWidget {
  const StepperWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 🔹 Stepper Superior (Horizontal)
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  height: 4,
                  decoration: ShapeDecoration(
                      color: Color(0xFF008392),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                )),
                Expanded(
                    child: Container(
                  height: 4,
                  decoration: ShapeDecoration(
                      color: Color(0xFFDEE3E3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                )),
                Expanded(
                    child: Container(
                  height: 4,
                  decoration: ShapeDecoration(
                      color: Color(0xFFDEE3E3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                )),
                Expanded(
                    child: Container(
                  height: 4,
                  decoration: ShapeDecoration(
                      color: Color(0xFFDEE3E3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                )),
                Expanded(
                    child: Container(
                  height: 4,
                  decoration: ShapeDecoration(
                      color: Color(0xFFDEE3E3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                )),
                Expanded(
                    child: Container(
                  height: 4,
                  decoration: ShapeDecoration(
                      color: Color(0xFFDEE3E3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                )),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Paso 1 de 6',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF6C757D),
                      fontSize: 14,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      height: 1.50),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
