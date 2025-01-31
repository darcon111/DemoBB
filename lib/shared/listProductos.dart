import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'item_product.dart';

class Listproductos extends StatelessWidget {
  final List<Widget> list = [
    ItemProduct(),
    ItemProduct(),
    ItemProduct(),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 140,          // Altura del carrusel
        autoPlay: false,         // Reproducción automática
        aspectRatio: 2,     // Relación de aspecto
        viewportFraction: 0.9,   // Cuánto ocupa cada slide
        disableCenter: true
      ),
      items: list.asMap().map((index, row) {
        return MapEntry(
          index,
          Padding(
            padding: EdgeInsets.only(
              right: index == list.length - 1 ? 20 : 40,  // Sin separación a la derecha en el último item
            ),
            child: row,  // Aquí va el widget que quieres mostrar
          ),
        );
      }).values.toList(),

    );
  }
}
