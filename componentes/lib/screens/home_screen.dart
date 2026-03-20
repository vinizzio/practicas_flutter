import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: Column(
          children: [ 
          // lsitTile 1 - Columnas
          ListTile(
            title: Text("Columnas"),
            subtitle: Text("Mostras como se construyen las columnas"),
            leading: Icon(Icons.account_tree_outlined),
            trailing: Icon(Icons.chevron_right),
            textColor: Color.fromARGB(247, 58, 3, 240),
          ),

            //Listtile 2
              ListTile(
            title: Text("Columnas"),
            subtitle: Text("Mostras como se construyen las filas"),
            leading: Icon(Icons.add_call),
            trailing: Icon(Icons.chevron_right),
            textColor: Color.fromARGB(247, 240, 94, 3),
              ),

             //Listtile 3
               ListTile(
            title: Text("Filas"),
            subtitle: Text("Mostras como se construyen las imagenes"),
            leading: Icon(Icons.adb_rounded),
            trailing: Icon(Icons.chevron_right),
            textColor: Color.fromARGB(247, 15, 240, 3),
              ),
              //Listtile 4
               ListTile(
            title: Text("Columnas"),
            subtitle: Text("Mostras como se construyen las tablas"),
            leading: Icon(Icons.access_time_filled_outlined),
            trailing: Icon(Icons.chevron_right),
            textColor: Color.fromARGB(247, 240, 228, 3),
              )


          ],
          ),
        );

  }

}