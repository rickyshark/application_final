import 'package:flutter/material.dart';
import 'package:flutter_application_final/Pages/asignaturasP.dart';
import 'package:flutter_application_final/Pages/calificaciones.dart';
import 'package:flutter_application_final/Pages/clases_virtuales.dart';
import 'package:flutter_application_final/Pages/pensum.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class menu_lateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Expanded(
                  child: Image(image: AssetImage('assets/logo-bg.png')),
                ),
                SizedBox(
                  height: 20.0,
                  width: 50.0,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => pemsunPage()));
            },
            title: Text('Pensum'),
            leading: Icon(
              LineIcons.folderAlt,
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text('Horarios'),
            leading: Icon(
              LineIcons.businessTime,
              color: Colors.green,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => asignaturasPage()));
            },
            title: Text('Asignaturas pendientes'),
            leading: Icon(
              LineIcons.clipboard,
              color: Colors.green,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ClasesvirtualesPage()));
            },
            title: Text('Clases virtuales'),
            leading: Icon(
              LineIcons.desktop,
              color: Colors.green,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => calificacionesPage()));
            },
            title: Text('Calificaciones'),
            leading: Icon(
              LineIcons.filePrescription,
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text('Calendario de Eventos'),
            leading: Icon(
              LineIcons.calendar,
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text('Noticias'),
            leading: Icon(
              LineIcons.newspaper,
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text('Videos'),
            leading: Icon(
              LineIcons.video,
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text('Quejas o Sugerencias'),
            leading: Icon(
              LineIcons.alternateCloudUpload,
              color: Colors.green,
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('Salir'),
            leading: Icon(
              LineIcons.powerOff,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
