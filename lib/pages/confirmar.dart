
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/button.dart';
import '../shared/generalToolbar.dart';
import '../shared/item_account.dart';

class ConfirmarPage extends StatelessWidget {

  final controller = MoneyMaskedTextController(leftSymbol: '\$ ');

  ConfirmarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
          appBar: Generaltoolbar(title: 'Confirmación',),
          body:
          SafeArea(child:
          SingleChildScrollView(
              child:
              Padding(padding: EdgeInsets.all(16),
                  child:
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(color: Colors.white),
                          child:
                          Column(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    'Confirma la transferencia',
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 28,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w600,
                                      height: 1.43,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                ItemAccount(title: 'Cuenta de origen', saldo: "Saldo: \$ 1290.98", tipo: 'Ahorros: 1982379218', codigo: 'MB', showArrow:false,),
                                SizedBox(height: 16),
                                ItemAccount(title: 'Cuenta de destino', saldo: 'Ahorros •987 - Banco Bol', tipo: 'Luis Adrián Mera Parrales', codigo: 'LM', showArrow: false,),
                                SizedBox(height: 32),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 164,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFFDEE3E3)),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 328,
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: SizedBox(
                                                child: Text(
                                                  'Detalles de la transferencia',
                                                  style: TextStyle(
                                                    color: Color(0xFF212529),
                                                    fontSize: 16,
                                                    fontFamily: 'Lexend',
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.50,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 112,
                                        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 32,
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'Monto a transferir',
                                                          style: TextStyle(
                                                            color: Color(0xFF495057),
                                                            fontSize: 14,
                                                            fontFamily: 'Lexend',
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.50,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 1.03),
                                                  Expanded(
                                                    child: SizedBox(
                                                      child: Text(
                                                        '\$20.00',
                                                        textAlign: TextAlign.right,
                                                        style: TextStyle(
                                                          color: Color(0xFF212529),
                                                          fontSize: 14,
                                                          fontFamily: 'Lexend',
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.50,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 32,
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'Motivo',
                                                          style: TextStyle(
                                                            color: Color(0xFF495057),
                                                            fontSize: 14,
                                                            fontFamily: 'Lexend',
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.50,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 1.03),
                                                  Expanded(
                                                    child: SizedBox(
                                                      child: Text(
                                                        'Cumpleaños',
                                                        textAlign: TextAlign.right,
                                                        style: TextStyle(
                                                          color: Color(0xFF212529),
                                                          fontSize: 14,
                                                          fontFamily: 'Lexend',
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.50,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 32,
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Servicio financiero',
                                                    style: TextStyle(
                                                      color: Color(0xFF495057),
                                                      fontSize: 14,
                                                      fontFamily: 'Lexend',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.50,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 1.03),
                                                  Expanded(
                                                    child: SizedBox(
                                                      child: Text(
                                                        '\$0.00',
                                                        textAlign: TextAlign.right,
                                                        style: TextStyle(
                                                          color: Color(0xFF212529),
                                                          fontSize: 14,
                                                          fontFamily: 'Lexend',
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.50,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    'Este contacto no se encuentra guardado.',
                                    style: TextStyle(
                                      color: Color(0xFF6C757D),
                                      fontSize: 14,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 66,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 66,
                                          padding: const EdgeInsets.all(12),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFDBEAFE),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1, color: Color(0xFF3B82F6)),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: 42,
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        padding: const EdgeInsets.all(4),
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                              width: 16,
                                                              height: 16,
                                                              clipBehavior: Clip.antiAlias,
                                                              decoration: BoxDecoration(),
                                                              child: SvgPicture.asset(
                                                                height: 24,
                                                                'assets/img/info.svg',
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(width: 8),
                                                      Expanded(
                                                        child: Container(
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              SizedBox(
                                                                width: MediaQuery.of(context).size.width,
                                                                child: Text(
                                                                  'La transferencia se realizará de inmediato',
                                                                  style: TextStyle(
                                                                    color: Color(0xFF121417),
                                                                    fontSize: 13,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ]
                          )
                      )
                    ],
                  )
              )
          )
          ),
          bottomNavigationBar:
          SafeArea(child:
          Padding(
            padding: EdgeInsets.all(16),
            child: ButtonWidget(texto: 'Continuar', onPressed: () {
              Navigator.pushNamed(context, '/Comprobante');
            },),
          )
          ),
        )

    );
  }
}