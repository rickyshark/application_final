import 'package:flutter/material.dart';

// ignore: camel_case_types
class asignaturasPage extends StatefulWidget {
  @override
  _asignaturaPageState createState() => _asignaturaPageState();
}

// ignore: camel_case_types
class _asignaturaPageState extends State<asignaturasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Asignatura"),
        ),
      ),
      body: Center(
        child: Text("Aqui van las asignatura del estudiante"),
      ),
    );
  }
}
