import 'package:flutter/material.dart';

class FlutterLayoutDemoScreen extends StatelessWidget {
  const FlutterLayoutDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout")),
      body: Column(
 children: [
 // 1. Imagen principal
 Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/20190725_Oeschinensee-Panorama%2C_Kandersteg_%2806540-42_stitch%29.jpg/1280px-20190725_Oeschinensee-Panorama%2C_Kandersteg_%2806540-42_stitch%29.jpg",
 ),
 // 2. Fila de información y calificación
 Row(
 children: [
 Column(
 children: [
 Text("Oeschinen Lake Campground"),
Text("Kandersteg, Switzerland"),
 ],
 ),
 Icon(Icons.star),
 Text("41"),
 ],
 ),
 // 3. Fila de botones de acción
 Row(
  mainAxisAlignment:  .spaceAround,
  children: [
    Column(
      children: [
        Icon(Icons.call_rounded, color: Colors.indigo), 
        Text("CALL", 
          style: TextStyle(
            color: Colors.indigo,
        ),
        )
    ],
  ),

 Column(children: [Icon(Icons.navigation_rounded), Text("ROUTE")]),
 Column(children: [Icon(Icons.share_rounded), Text("SHARE")]),
 ],
 ),
 // 4. Texto de descripción
 Text(
 "Lake Oeschinen lies at the foot of the Blüemlisalp in theBernese Alps. Situated 1,578 meters above sea level...",
 ),
 ],
 ),
      );
  }
}