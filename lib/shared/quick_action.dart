import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import 'item_quick.dart';

class QuickAction extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 36,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 36,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Acciones rápidas',
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
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
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
                    Text(
                      'Agregar',
                      style: TextStyle(
                        color: Color(0xFF008392),
                        fontSize: 14,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w500,
                        height: 1.43,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),


        /*,
        CarouselSlider(
          options:
          CarouselOptions(
            initialPage: 0,
            disableCenter: true,
            height: 95,          // Altura del carrusel
            autoPlay: false,         // Reproducción automática
            aspectRatio: 16 / 9,     // Relación de aspecto
            viewportFraction: 0.45,   // Cuánto ocupa cada slide
          ),
          items: list.map((row) {
            return row;
          }).toList(),
        )*/
      ],
    );
  }
}
