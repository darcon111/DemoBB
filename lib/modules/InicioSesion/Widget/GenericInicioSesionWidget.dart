import 'package:demobb/shared/forms/generic_input.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class GenericInicioSesionWidget extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? usuario;
  String? contrasenia;
  bool isHidden = false;

  GenericInicioSesionWidget({super.key});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
            child: Form(
                key: _formKey,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Inicia sesión',
                        style: TextStyle(
                          fontSize: 48,
                          fontFamily: 'Lexend',
                        ),
                      )),
                  GenericInput(
                      textLabel: 'Usuario',
                      onSaved: (value) => usuario = value),
                  GenericInput(
                      textLabel: 'Contraseña',
                      isHidden: isHidden,
                      hiddenOption: true,
                      onSaved: (value) => contrasenia = value),
                  isDesktop(context)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.only(bottom: 16, top: 16),
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    overlayColor: Colors.red,
                                    elevation: 0.0),
                                onPressed: () {
                                  print('evento');
                                },
                                child: Text(
                                  'Olvidé mi usuario o contraseña',
                                  style: TextStyle(color: Color(0xFF008392)),
                                )),
                            Container(
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF008392),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState != null &&
                                        _formKey.currentState!.validate()) {
                                      _formKey.currentState?.save();
                                      print(_formKey.currentState?.toString());
                                      print(contrasenia);
                                      print(usuario);
                                    }
                                  },
                                  child: const Center(
                                    child: Text(
                                        style: TextStyle(
                                            fontFamily: 'Lexend',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                        'Iniciar Sesión'),
                                  ),
                                )),
                          ],
                        )
                      : Column(children: [
                          Container(
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF008392),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState != null &&
                                      _formKey.currentState!.validate()) {
                                    _formKey.currentState?.save();
                                    print(_formKey.currentState?.toString());
                                    print(contrasenia);
                                    print(usuario);
                                  }
                                },
                                child: const Center(
                                  child: Text(
                                      style: TextStyle(
                                          fontFamily: 'Lexend',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                      'Iniciar Sesión'),
                                ),
                              )),
                          SizedBox(height: 16),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(bottom: 16, top: 16),
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  overlayColor: Colors.red,
                                  elevation: 0.0),
                              onPressed: () {
                                print('evento');
                              },
                              child: Text(
                                'Olvidé mi usuario o contraseña',
                                style: TextStyle(color: Color(0xFF008392)),
                              ))
                        ])
                ]))));
  }
}
