import 'package:flutter/material.dart';

import '../shared/carrusel.dart';
import '../shared/item_quick.dart';
import '../shared/listProductos.dart';
import '../shared/quick_action.dart';
import '../shared/toolbar.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final controller = PageController(viewportFraction: 0.45, keepPage: true);

  final List<Widget> list = [
    ItemQuick(),
    ItemQuick(),
    ItemQuick(),
  ];


  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child:
        Column(
        children:[
          SizedBox(height: 16),
        Container(
        width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top -
              MediaQuery.of(context).padding.bottom,
          decoration: BoxDecoration(color: Colors.white),
          child:
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Carrusel(),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 36,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Mis productos',
                            style: TextStyle(
                              color: Color(0xFF212529),
                              fontSize: 16,
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Listproductos()
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                    child:
                        Column(children: [
                QuickAction(),
                          SizedBox(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: PageView.builder(
                              padEnds: false,
                              controller: controller,
                              // itemCount: pages.length,
                              itemBuilder: (_, index) {
                                return
                                  Padding(
                                    padding: EdgeInsets.only(left: index == 0 ? 15 : 10, right: 10), // Ajusta el padding inicial
                                child:
                                list[index % list.length]);
                              },
                            ),
                          )
                        ])
                ),

              ]
            )
          ,
        ),
        ],
        ));
  }
}