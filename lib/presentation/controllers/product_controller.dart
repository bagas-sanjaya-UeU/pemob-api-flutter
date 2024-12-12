import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/entities/product.dart';

class ProductController {
  final String apiUrl = 'http://178.128.121.96/api/products';

  Future<List<Product>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        // Decode JSON response
        final jsonResponse = jsonDecode(response.body);
        // Akses 'data' di dalam JSON untuk mendapatkan daftar produk
        final productList = jsonResponse['data']['data'] as List<dynamic>;
        // Map JSON ke dalam entity Product
        return productList
            .map((productJson) => Product.fromJson(productJson))
            .toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
