import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_final/MenuLateral/drawer.dart';
import '../model/ModelLogin.dart';

class Home extends StatefulWidget {
  final LoginResponseModel log;

  const Home(this.log) : super();

  HomeState createState() => HomeState(this.log);
}

class HomeState extends State<Home> {
  final LoginResponseModel logint;

  HomeState(this.logint) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Pagina Principal')),
        backgroundColor: Colors.amber,
      ),
      drawer: menu_lateral(),
      body: Center(
        child: Column(
          children: [
            Text(logint.data.nombre),
            Text(logint.data.apellido),
            Text(logint.data.token)
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => exit(0),
        tooltip: 'Close app',
        child: new Icon(Icons.close),
      ),
    );
  }
}
