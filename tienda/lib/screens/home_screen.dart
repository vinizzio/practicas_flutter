import 'package:flutter/material.dart';
import 'package:tienda/screens/cart_screen.dart';
import 'package:tienda/screens/profile_screen.dart';
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
          IconButton(
            onPressed: () {
              final route = MaterialPageRoute(builder: (context) {
                return ProfileScreen();
              },);
              Navigator.push(context, route);
            },
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Text("COLECCIÓN 2024", style: TextStyle(letterSpacing: 3.0)),
            Text(
              "Diseño atemporal",
              style: TextStyle(fontWeight: .bold, fontSize: 32),
            ),
            //ProductCard(),
            FutureBuilder(
              future: ProductService().getProducts(), 
              builder: (context, snapshot) {
                // snapshot -> Captura de la respuesta del future
                // Controlar errores
                if(snapshot.hasError) {
                  return Text("Ha ocurrido un error");
                }
                if(!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                final data = snapshot.data ?? [];
                return ListView.builder(
                  itemBuilder: (context, index) {
                    final producto = data[index];
                    return ProductCard(product: producto,);
                  },
                  itemCount: data.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                );
              },
            ),
          ],
        ),
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