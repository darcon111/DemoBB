import 'package:flutter/material.dart';

import '../shared/carrusel.dart';
import '../shared/listProductos.dart';
import '../shared/toolbar.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea( child:
        Column(
        children:[
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
                TopAppBar(),
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
                )
              ]
            )
          ,
        ),
        ],
      )),
    );
  }
}