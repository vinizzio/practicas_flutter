
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: FilledButton(
              onPressed: () {
              
              },
              child: Text("Añadir"),
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
