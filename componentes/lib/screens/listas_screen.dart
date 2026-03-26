import 'package:flutter/material.dart';

class ListasScreen extends StatelessWidget {
  const ListasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFF0D47A1),
        title: Text("Listas",
        
        ),
        
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