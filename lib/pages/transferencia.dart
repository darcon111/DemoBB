
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

import '../shared/button.dart';
import '../shared/generalToolbar.dart';
import '../shared/item_account.dart';

class TransferenciaPage extends StatelessWidget {

  final controller = MoneyMaskedTextController(leftSymbol: '\$ ');

  TransferenciaPage({super.key});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
          backgroundColor: Colors.white,
            appBar: Generaltoolbar(title: 'Monto'),
            body:
            SingleChildScrollView(
                    physics: ClampingScrollPhysics(),
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
                            ItemAccount(title: 'Cuenta de origen', saldo: "Saldo: \$ 1290.98", tipo: 'Ahorros: 1982379218', codigo: 'MB', showArrow:true,),
                            SizedBox(height: 16),
                            ItemAccount(title: 'Cuenta de destino', saldo: 'Ahorros •987 - Banco', tipo: 'Luis Mera', codigo: 'LM', showArrow: false,),
                            SizedBox(height: 32),
                            Text(
                              'Ingresa el monto',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF495057),
                                fontSize: 16,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                            Center(
                              child:
                              Container(width: 150,child:
                              TextField(
                                  textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF212529),
                                  fontSize: 20,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                                  keyboardType: TextInputType.number,
                                  controller: controller,
                                   decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey), // Línea cuando no está enfocado
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue, width: 2), // Línea al enfocar
                                ),
                              )
                              )),
                            ),
                            SizedBox(height: 16),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: Text(
                                              'Motivo (opcional)',
                                              style: TextStyle(
                                                color: Color(0xFF495057),
                                                fontSize: 16,
                                                fontFamily: 'Lexend',
                                                fontWeight: FontWeight.w400,
                                                height: 1.50,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Container(
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(36),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                '¿Es un regalo?',
                                                style: TextStyle(
                                                  color: Color(0xFF008392),
                                                  fontSize: 14,
                                                  fontFamily: 'Lexend',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              padding: EdgeInsets.all(10), // Espaciado interno
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1), // Borde azul
                                  borderRadius: BorderRadius.circular(10)),
                              child:
                              SizedBox(
                                  height: 55,
                                  child:
                                  TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none, // Elimina la línea inferior
                                      ),
                                      style: TextStyle(
                                        color: Color(0xFF212529),
                                        fontSize: 12,
                                        fontFamily: 'Lexend',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      )
                                  )),
                            )
                          ]
                        )
                  )
                ],
            ))),
            bottomNavigationBar:
            SafeArea(child:
            Padding(
              padding: EdgeInsets.all(16),
              child: ButtonWidget(texto: 'Continuar', onPressed: () {
                Navigator.pushNamed(context, '/Confirmar');
              },),
            )
          ),
        )

    );
  }
}