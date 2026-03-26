import 'package:flutter/material.dart';

class FlutterLayoutDemoScreen extends StatelessWidget {
  const FlutterLayoutDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
         elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFF0D47A1),
        title: Text(
          "Layout",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 0.5,
        ),
        )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
 children: [
 // 1. Imagen principal
 Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/20190725_Oeschinensee-Panorama%2C_Kandersteg_%2806540-42_stitch%29.jpg/1280px-20190725_Oeschinensee-Panorama%2C_Kandersteg_%2806540-42_stitch%29.jpg",
 ),
 SizedBox(height: 20),
 // 2. Fila de información y calificación
 Padding(
 padding: const EdgeInsets.all(16.0),
 child: Row(
 children: [
 // La Column ocupa todo el espacio disponible
 Expanded(
 child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: [
 Text(
 "Flutter Layout Demo 1",
 style: TextStyle(fontWeight: FontWeight.w600),
 ),
 Text(
 "Flutter Layout Demo 2",
 style: TextStyle(color: Colors.grey, fontSize: 12),
 ),
 ],
 ),
 ),
 // Ícono de estrella en color ámbar
 Icon(Icons.star, color: Colors.amber),
 Text("41"),
 ],
 ),
),
 // 3. Fila de botones de acción
Row(
 mainAxisAlignment: MainAxisAlignment.spaceAround,
 children: [
 Column(
 children: [
 Icon(Icons.call_rounded, color: Colors.indigo),
 Text("CALL", style: TextStyle(color: Colors.indigo)),
 ],
 ),
 Column(
 children: [
 Icon(Icons.navigation_rounded, color: Colors.indigo),
 Text("ROUTE", style: TextStyle(color: Colors.indigo)),
 ],
 ),
 Column(
 children: [
 Icon(Icons.share_rounded, color: Colors.indigo),
 Text("SHARE", style: TextStyle(color: Colors.indigo)),
 ],
 ),
 ],
),
 // 4. Texto de descripción
 
 Padding(
  padding: const EdgeInsets.all(16.0),
  child: Text(
 "Lake Oeschinen lies at the foot of the Blüemlisalp in theBernese Alps. Situated 1,578 meters above sea level...",
  ),
 ),
 ],
 ),
      ),
      );
  }
}