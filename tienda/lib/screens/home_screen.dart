import 'package:flutter/material.dart';
import 'package:tienda/screens/cart_screen.dart';
import 'package:tienda/services/product_service.dart';
import 'package:tienda/widgets/product_card.dart';

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
          ProductCard(),
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
