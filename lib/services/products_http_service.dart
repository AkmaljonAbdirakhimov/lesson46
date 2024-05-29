import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lesson46/models/product.dart';

class ProductsHttpService {
  Future<List<Product>> getProducts() async {
    Uri url = Uri.parse(
        "https://lesson46-761b9-default-rtdb.firebaseio.com/products.json");

    final response = await http.get(url);
    final data = jsonDecode(response.body);
    List<Product> loadedProducts = [];

    if (data != null) {
      data.forEach((key, value) {
        loadedProducts.add(Product.fromJson(value));
      });
    }
    return loadedProducts;
  }
}
