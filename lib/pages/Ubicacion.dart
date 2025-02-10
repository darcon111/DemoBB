

import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../shared/ButtonWhite.dart';
import '../shared/button.dart';
import '../shared/generalToolbar.dart';
import '../shared/item_account.dart';

class UbicacionPage extends StatelessWidget {

  final controller = MoneyMaskedTextController(leftSymbol: '\$ ');

  UbicacionPage({super.key});

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(16),
          child:
              Container(height: 230,child:
          Column(children: [
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
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
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: double.infinity,
                      child: Text(
                        'Ubica tu dirección',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF212529),
                          fontSize: 18,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w600,
                          height: 1.67,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                      ),
                    ),
                    child:
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Icon(Icons.close),
                          ),
                        ],
                      ),
                    )
                    ,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonWidget(texto: "Buscar dirección", onPressed: (){
                  }),
                  const SizedBox(height: 16),
                  ButtonWhiteWidget(texto: "Usar mi ubicación actual", onPressed: (){

                  }),
                ],
              ),
            )
          ])
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
          appBar: Generaltoolbar(title: 'Ubicacion',),
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
                        height: 80,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Ingresa los datos de tu domicilio',
                                style: TextStyle(
                                  color: Color(0xFF212529),
                                  fontSize: 28,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w600,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(width: MediaQuery.of(context).size.width,height: 30,
                          child: Row(
                        children: [
                          Expanded(
                            flex: 7, // 80% del espacio
                            child: Container(
                              padding: EdgeInsets.all(4),
                              color: Colors.white,
                              child: LinearProgressBar(
                                minHeight: 4,
                                maxSteps: 6,
                                progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                                currentStep: 1,
                                progressColor: Color(0xFF008392),
                                backgroundColor: Color(0xFFDEE3E3),
                                borderRadius: BorderRadius.circular(10), //  NEW
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3, // 20% del espacio
                            child: Container(
                              child: SizedBox(
                                width: 80,
                                height: 21,
                                child: Text(
                                  'Paso 2 de 6',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF6C757D),
                                    fontSize: 14,
                                    fontFamily: 'Lexend',
                                    fontWeight: FontWeight.w400,
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                      SizedBox(height: 24,),
                      GestureDetector(
                        onTap: () {

                          _showCustomBottomSheet(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
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
                                          'Ubica tu domicilio',
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
                                  ],
                                ),
                              ),
                              SizedBox(height: 4,),
                              Container(
                                width: double.infinity,
                                height: 48,
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'Marca la ubicación en el mapa',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontFamily: 'Lexend',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      width: 16,
                                      height: 16,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Icon(Icons.location_searching,size: 16,),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
              Navigator.pushNamed(context, '/Mapa');
            },),
          )
          ),
        )

    );
  }
}