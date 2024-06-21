import 'package:flutter/material.dart';
import 'package:frontend/services/api_service.dart';
import 'package:frontend/models/product.dart';

class ProductProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Product> _products = [];

  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    final data = await _apiService.fetchProducts();
    _products = data.map((json) => Product.fromJson(json)).toList();
    notifyListeners();
  }

  Future<void> addProduct(String name, String description, String imageUrl, String owner) async {
    await _apiService.addProduct(name, description, imageUrl, owner);
    await fetchProducts();
  }
}
