import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carrusel extends StatelessWidget {
  final List<String> images = [
    "https://via.placeholder.com/400",
    "https://via.placeholder.com/500",
    "https://via.placeholder.com/600",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carrusel en Flutter")),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 250.0,          // Altura del carrusel
            autoPlay: true,         // Reproducción automática
            enlargeCenterPage: true, // Efecto de zoom en la imagen central
            aspectRatio: 16 / 9,     // Relación de aspecto
            viewportFraction: 0.8,   // Cuánto ocupa cada slide
          ),
          items: images.map((url) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(url, fit: BoxFit.cover, width: 1000),
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: CarruselPage()));
