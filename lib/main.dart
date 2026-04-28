import 'package:flutter/material.dart';
import 'package:tarea1_app/views/ejercicio1_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leccion 1.1 Preuba Alfonso Arroyo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Ejercicio1Pagina(),
    );
  }
}



