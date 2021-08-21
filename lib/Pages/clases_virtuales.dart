import 'package:flutter/material.dart';

class ClasesvirtualesPage extends StatefulWidget {
  @override
  _ClasesvirtualesPage createState() => _ClasesvirtualesPage();
}

// ignore: camel_case_types
class _ClasesvirtualesPage extends State<ClasesvirtualesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Align(
        alignment: Alignment(-0.3, -0.6),
        child: Text("Clase Virtuales"),
      )),
      body: Center(
        child: Text("Aqui van las Clases virtuales del estudiante"),
      ),
    );
  }
}
