import 'package:flutter/material.dart';

// ignore: camel_case_types
class pemsunPage extends StatefulWidget {
  @override
  _pemsunPageState createState() => _pemsunPageState();
}

// ignore: camel_case_types
class _pemsunPageState extends State<pemsunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Pensum"),
        ),
      ),
      body: Center(
        child: Text("Aqui van el pensum de la carrera"),
      ),
    );
  }
}
