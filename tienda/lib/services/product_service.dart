import 'package:dio/dio.dart';

class ProductService {
  final dio = Dio();
  
  void getProducts () async {
    final response = await dio.get("https://my-json-server.typicode.com/RicharC293/fake_doctors/products");
    print(response.data[0]["name"]); 
  }



}