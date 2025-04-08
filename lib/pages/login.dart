import 'package:demobb/modules/Login/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

import 'DesignOverlay.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
      DesignOverlay(
          children: [
            Positioned(
              top: 100,
              left: 50,
              child: DesignBox(width: 200, height: 50, label: 'Botón Login'),
            ),
            // ... más cajas que quieras verificar
          ],
        enabled: true, // cambiar a false cuando terminas
        child:
      LoginScreen());

  }
}