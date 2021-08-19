import 'package:flutter/material.dart';

// ignore: camel_case_types
class calificacionesPage extends StatefulWidget {
  @override
  _calificacionesPageState createState() => _calificacionesPageState();
}

// ignore: camel_case_types
class _calificacionesPageState extends State<calificacionesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Calificaciones"),
        ),
      ),
      body: Center(
        child: Text("Aqui van las calificaciones del estudiante"),
      ),
    );
  }
}
