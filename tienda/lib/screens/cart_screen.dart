import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tienda/models/product_model.dart';
import 'package:tienda/notifier/cart_notifier.dart';
import 'package:tienda/screens/checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProducts = context.watch<CartNotifier>().cartProducts;
    return Scaffold(
      appBar: AppBar(title: Text("Mi carrito"), centerTitle: true),
      body: ListView.builder(
        itemBuilder: (context, index) {
          // dato
          final product = cartProducts[index];
          return CartCard(product: product,);
        },
        itemCount: cartProducts.length,
      ),
      bottomNavigationBar: Column(
        mainAxisSize: .min,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withAlpha(200)),
              color: Color(0xfff7f2fa),
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                        fontWeight: .w600,
                        color: Color(0xff79767B),
                      ),
                    ),
                    Text("\$${context.watch<CartNotifier>().subtotal.toStringAsFixed(2)}", style: TextStyle(fontWeight: .bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Envío",
                      style: TextStyle(
                        fontWeight: .w600,
                        color: Color(0xff79767B),
                      ),
                    ),
                    Text(
                      "\$${context.watch<CartNotifier>().envio}",
                      style: TextStyle(
                        fontWeight: .bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),

                Divider(),

                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(fontSize: 24, fontWeight: .bold),
                    ),
                    Text(
                      "\$${context.watch<CartNotifier>().total.toStringAsFixed(2)}",
                      style: TextStyle(fontSize: 24, fontWeight: .bold),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.all(16),
            child: FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutScreen()),
                );
              },
              child: Text("Ir a Pagar"),
            ),
          ),
        ],
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        spacing: 12,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16),
            child: Image.network(
              product.image,
              width: 80,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontWeight: .w600),
                ),
                Text(product.description, style: TextStyle(fontSize: 11)),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "\$${product.price.toStringAsFixed(2)}",
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE8DEF8),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        crossAxisAlignment: .center,
                        children: [
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              context.read<CartNotifier>().removeProduct(product);
                            },
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Icon(Icons.remove_outlined),
                            ),
                          ),
                          SizedBox(width: 4),
                          Text("1"),
                          SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              print("Suma elementos");
                            },
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Icon(Icons.add_outlined),
                            ),
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
