import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_final/Api/ApiService.dart';
import 'package:flutter_application_final/Pages/Home.dart';
import 'package:flutter_application_final/model/ModelLogin.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  late List dato;
  String url = "https://apps.ia3x.com/ute_app_utesa/index.php?/App/recintos";

  Future allRecintos() async {
    var reponse =
        await http.get(Uri.parse(url), headers: {"Accept": "application/json"});
    Map<String, dynamic> data =
        new Map<String, dynamic>.from(json.decode(reponse.body));

    setState(() {
      dato = data["data"];
    });

    return "success";
  }

  @override
  void initState() {
    super.initState();
    allRecintos();
  }

  TextEditingController recinto = TextEditingController();
  TextEditingController usuario = TextEditingController();
  TextEditingController clave = TextEditingController();
  ApiService appi = ApiService();
  late LoginResponseModel datos;
  String error = "";

  Future<void> sendData() async {
    try {
      LoginRequestModel log = LoginRequestModel(
          recinto: recinto.text,
          usuario: usuario.text,
          clave: clave.text,
          appId: "20197870");
      datos = await appi.login(log);

      if (datos.success != false) {
        error = "";
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home(datos)));
      } else {
        error = "Datos Erroneos";
      }
    } catch (e) {
      error = "Usuario o clave incorrecto";
    }
  }

  @override
  Widget build(BuildContext context) {
    String? _currentSugars;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: (Text("UTESA"))),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$error'),
            Container(
              child: DropdownButton(
                value: _currentSugars,
                hint: Text("Selecionar recinto"),
                items: dato
                    .map(
                      (list) => DropdownMenuItem(
                        child: Text(list['txt']),
                        value: list['id'].toString(),
                      ),
                    )
                    .toList(),
                onChanged: (val) =>
                    setState(() => _currentSugars = val as String),
              ),
            ),
            TextField(
                textAlign: TextAlign.justify,
                controller: recinto,
                decoration: new InputDecoration(
                  prefixIcon: Icon(
                    Icons.apartment,
                    color: Colors.green,
                  ),
                  hintText: "Recinto",
                )),
            TextField(
              textAlign: TextAlign.justify,
              controller: usuario,
              decoration: new InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                hintText: "Usuario",
              ),
            ),
            TextField(
              textAlign: TextAlign.justify,
              controller: clave,
              decoration: new InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.green,
                ),
                hintText: "Contraseña",
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 150.0),
              child: ElevatedButton(
                onPressed: () {
                  if (recinto.text != "" ||
                      usuario.text != "" ||
                      clave.text != "") {
                    sendData();
                  } else {
                    error = "LLenar todos los campos";
                  }
                },
                child: const Text('Ingresar'),
              ),
            ),
            Text(
              '''Parar recuperar su contraseña diríjase al Departamento
  de Cómputos de su recinto presentando su carnet''',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
