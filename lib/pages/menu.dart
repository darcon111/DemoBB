import 'package:flutter/material.dart';

import '../shared/item_banner.dart';
import '../shared/item_product.dart';
import '../shared/toolbar.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
        Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.white),
          child:
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                TopAppBar(),
                ItemBanner(),
                Column(
                  children: [
                    Container(
                      width: 360,
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
                  ],
                )
              ]
            )
          ,
        ),
        ],
      ),
    );
  }
}