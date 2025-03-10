import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemAccount extends StatelessWidget {

  String title;
  String saldo;
  String tipo;
  String codigo;
  bool showArrow;

 ItemAccount({required this.title,required this.saldo,required this.tipo, required this.codigo,required this.showArrow});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 110,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFCED4DA)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0xFFDAEFED),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Text(
                                    codigo,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF008392),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                      letterSpacing: 0.15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Text(
                                title,
                                style: TextStyle(
                                  color: Color(0xFF212529),
                                  fontSize: 16,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                '${tipo}\n${saldo}',
                                style: TextStyle(
                                  color: Color(0xFF6C757D),
                                  fontSize: 14,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    showArrow ?
                    Container(
                      width: 24,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Icon(Icons.arrow_forward_ios_outlined,size: 24,),
                          ),
                        ],
                      ),
                    ):SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}