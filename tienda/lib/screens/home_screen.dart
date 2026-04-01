import 'package:flutter/material.dart';
import 'package:tienda/screens/cart_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nuestra Tienda"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          Text("COLECCIÓN 2024", style: TextStyle(letterSpacing: 3.0)),
          Text(
            "Diseño atemporal",
            style: TextStyle(fontWeight: .bold, fontSize: 32),
          ),
          Container(
            width: 500,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 224, 246, 255),
              borderRadius: BorderRadius.circular(36),
            ),
            margin: EdgeInsets.all(14),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  child: Image.network(
                    "https://raw.githubusercontent.com/RicharC293/fake_doctors/refs/heads/master/images/producto-1.jpg",
                  ),
                ),
                SizedBox(height: 12),
                Text("Jarrón de Cerámica", style: TextStyle(fontWeight: .bold)),
                SizedBox(height: 8),
                Text("\$45.00"),
                SizedBox(height: 8),
                SizedBox(
                  width: 350,
                  child: FilledButton(onPressed: () {}, child: Text("Añadir")),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
        onTap: (value) {
          if (value == 1) {
            final route = MaterialPageRoute(
              builder: (context) {
                return CartScreen();
              },
            );
            Navigator.push(context, route);
          }
        },
      ),
    );
  }
}