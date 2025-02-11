import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductCardWidget extends StatelessWidget {
  final bool isDesktop;
  final bool isLoading;
  final bool helperText;
  final String tittle;
  final String dinero;
  final String imagen1;
  final String imagen2;
  const ProductCardWidget(
      {super.key,
      required this.isDesktop,
      required this.isLoading,
      required this.imagen1,
      required this.imagen2,
      required this.helperText,
      required this.tittle,
      required this.dinero});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 135,
              width: isDesktop ? 258 : MediaQuery.of(context).size.width - 32,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  shadows: [
                    BoxShadow(
                        color: Color(0x4C000000),
                        blurRadius: 1,
                        offset: Offset(0, 1),
                        spreadRadius: 0)
                  ]),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 45,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  tittle,
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
                                width: double.infinity,
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    '00012345678',
                                    style: TextStyle(
                                        color: Color(0xFF6C757D),
                                        fontSize: 14,
                                        fontFamily: 'Lexend',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (helperText)
                                Text(
                                  'Pagar hasta el 15 nov. 2024',
                                  style: TextStyle(
                                    color: Color(0xFF3B82F6),
                                    fontSize: 12,
                                    fontFamily: 'Lexend',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                )
                              else
                                Text(
                                  'Saldo disponible',
                                  style: TextStyle(
                                      color: Color(0xFF6C757D),
                                      fontSize: 12,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50),
                                ),
                              const SizedBox(height: 4),
                              Container(
                                width: 174,
                                height: 32,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          dinero,
                                          style: TextStyle(
                                              color: Color(0xFF212529),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              height: 1.33),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        isLoading
                                            ? Container(
                                                width: 24,
                                                height: 24,
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        45.45))),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 24,
                                                      height: 24,
                                                      decoration: ShapeDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          1.00,
                                                                          0.00),
                                                                  end:
                                                                      Alignment(
                                                                          -1,
                                                                          0),
                                                                  colors: [
                                                                Color(
                                                                    0xFFE2E3E7),
                                                                Color(
                                                                    0xFFE2E3E7),
                                                                Color(
                                                                    0xFFF4F5F9)
                                                              ]),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          45.45))),
                                                    )
                                                  ],
                                                ),
                                              )
                                            : Container(
                                                width: 24,
                                                height: 24,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.pushNamed(
                                                        context, '/Otp');
                                                  },
                                                  child: SvgPicture.asset(
                                                    imagen1,
                                                  ),
                                                ),
                                              ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(children: [
                                      isLoading
                                          ? Container(
                                              width: 24,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              45.45))),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: ShapeDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                                begin:
                                                                    Alignment(
                                                                        1.00,
                                                                        0.00),
                                                                end: Alignment(
                                                                    -1, 0),
                                                                colors: [
                                                              Color(0xFFE2E3E7),
                                                              Color(0xFFE2E3E7),
                                                              Color(0xFFF4F5F9)
                                                            ]),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        45.45))),
                                                  )
                                                ],
                                              ),
                                            )
                                          : Container(
                                              width: 24,
                                              height: 24,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.pushNamed(
                                                        context, '/Otp');
                                                  },
                                                  child: SvgPicture.asset(
                                                      imagen2)),
                                            )
                                    ])
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
