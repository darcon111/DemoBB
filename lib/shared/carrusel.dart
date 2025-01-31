import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'item_banner.dart';

class Carrusel extends StatelessWidget {
  final List<Widget> list = [
    ItemBanner(),
    ItemBanner(),
    ItemBanner(),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 140,          // Altura del carrusel
        autoPlay: true,         // Reproducción automática
        aspectRatio: 16 / 9,     // Relación de aspecto
        viewportFraction: 0.8,   // Cuánto ocupa cada slide
      ),
      items: list.map((row) {
        return row;
      }).toList(),
    );
  }
}

