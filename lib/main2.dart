import 'package:demobb/shared/forms/generic_input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
            child: Form(
                key: _formKey,
                child: Column(children: [
                  GenericInput(textLabel: 'Usuario'),
                  SizedBox(height: 24),
                  GenericInput(
                    textLabel: 'Contraseña',
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
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
                ]))),
        floatingActionButton: Container(
            height: 50,
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF008392),
              ),
              onPressed: () {},
              child: const Center(
                child: Text(
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    'Iniciar Sesión'),
              ),
            )));
  }
}
