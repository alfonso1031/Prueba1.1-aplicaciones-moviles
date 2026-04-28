import 'package:flutter/material.dart';
import '../controllers/ejercicio1_controller.dart';

/// atomos
class LabelText extends StatelessWidget {
  final String texto;
  LabelText(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }
}

class NumberField extends StatelessWidget {
  final TextEditingController controller;
  NumberField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Ej. 8',
      ),
    );
  }
}

class Boton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  Boton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class ResultadoEtiqueta extends StatelessWidget {
  final String texto;
  ResultadoEtiqueta({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueAccent),
    );
  }
}

/// Moleculas
class NumeroInput extends StatelessWidget {
  final String titulo;
  final TextEditingController controller;

  NumeroInput({super.key, required this.titulo, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(titulo),
        SizedBox(height: 8),
        NumberField(controller: controller),
        SizedBox(height: 15),
      ],
    );
  }
}

/// organismos
class PrimosRelativosCard extends StatefulWidget {
  @override
  State<PrimosRelativosCard> createState() => PrimosRelativosCardState();
}

class PrimosRelativosCardState extends State<PrimosRelativosCard> {
  final TextEditingController _ctrlNum1 = TextEditingController();
  final TextEditingController _ctrlNum2 = TextEditingController();

  final Ejercicio1Controller controller = Ejercicio1Controller();
  String _resultado = '';

  void verificar() {
    setState(() {
      _resultado = controller.evaluarNumeros(_ctrlNum1.text, _ctrlNum2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            NumeroInput(titulo: 'Ingrese el primer número:', controller: _ctrlNum1),
            NumeroInput(titulo: 'Ingrese el segundo número:', controller: _ctrlNum2),
            SizedBox(height: 10),
            Boton(onPressed: verificar, text: 'Comprobar'),
            SizedBox(height: 20),
            ResultadoEtiqueta(texto: _resultado),
          ],
        ),
      ),
    );
  }
}

/// pagina
class Ejercicio1Pagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primos Relativos'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: PrimosRelativosCard(),
        ),
      ),
    );
  }
}