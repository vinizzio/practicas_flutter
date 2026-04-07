// Clase extender notifier 
// Definir las variables 
// Construirlas

import 'package:flutter/foundation.dart';
import 'package:tienda/models/product_model.dart';

class CartNotifier extends ChangeNotifier {
    // Llamar endpoints - servicios
    // controlar la lógica
    // guardar valores en memoria

    List<ProductModel> _cartProducts = [];

    // Getters - setters
    List<ProductModel> get cartProducts => _cartProducts;

    set cartProducts(List<ProductModel> products) {
        _cartProducts = products;
    }

    // Subtotal
    double get subtotal {
        final prices =  cartProducts.map((e) {
          return e.price;
        }).toList();
        return prices.isNotEmpty ? prices.reduce((a, b) => a + b) : 0.0;
    }

    // Envio 
    double get envio => 10.0;

    //Total
    double get total => subtotal + envio;

    // Funciones 
    void addProductToCart(ProductModel product) {
        _cartProducts.add(product);
        notifyListeners(); 
    }

    void removeProduct(ProductModel product) {
        _cartProducts.remove(product);
        notifyListeners();
    }

    void clearCart() {
        _cartProducts.clear();
        notifyListeners();
    }

}