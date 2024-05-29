import 'package:lesson46/models/product.dart';
import 'package:lesson46/services/products_http_service.dart';

class ProductsController {
  List<Product> list = [];
  final productsHttpService = ProductsHttpService();

  Future<List<Product>> getProducts() async {
    list = await productsHttpService.getProducts();

    return list;
  }
}
