import 'package:flutter/material.dart';

class ListasScreen extends StatelessWidget {
  const ListasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listas"),
        centerTitle: true,
      ),
       // body: ListView(
         // children: [
           // Image.asset("assets/imagen.png"),
           // Image.asset("assets/imagen.png"),
         // ],
        //),
        body: ListView.separated(
          itemCount: 20,
          separatorBuilder: (context, index) {
            return Divider ();
          },
        itemBuilder: (context, index) {
          return Card (
            child:  Padding(
              padding: const EdgeInsets.all(8.2),
              child: Text("Elemento : $index"),
            ),
          );
        }
        ),
    );
  }
}