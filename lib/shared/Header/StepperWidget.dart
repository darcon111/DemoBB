import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget implements PreferredSizeWidget {
  final int selected;
  final int total;
  final bool isDesktop;
  const StepperWidget(
      {super.key,
      required this.selected,
      required this.total,
      required this.isDesktop});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: isDesktop
              ? EdgeInsets.only(bottom: 32)
              : EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    for (int a = 0; a < total; a++)
                      Expanded(
                        child: Container(
                          height: 4,
                          width: double.infinity,
                          padding: EdgeInsets.zero,
                          margin: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(a == 0 ? 8 : 0),
                              bottomLeft: Radius.circular(a == 0 ? 8 : 0),
                              topRight: Radius.circular(a == total - 1 ? 8 : 0),
                              bottomRight: Radius.circular(a == total - 1 ? 8 : 0),
                            ),
                            color: a < selected ? Color(0xFF008392) : Color(0xFFDEE3E3),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Paso $selected de $total',
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
        )
      ],
    );
  }
}
