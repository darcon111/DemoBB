import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey // Color de la línea
      ..strokeWidth = 5.0 // Grosor de la línea
      ..style = PaintingStyle.stroke; // Solo dibuja la línea, no relleno

    // Dibuja una línea desde el punto (50, 50) hasta (250, 150)
    canvas.drawLine(Offset(1, 50), Offset(250, 150), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No necesita redibujar si no hay cambios
  }
}