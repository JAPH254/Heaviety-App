import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:frontend/providers/product_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Showcase'),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) {
          return FutureBuilder(
            future: provider.fetchProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                itemCount: provider.products.length,
                itemBuilder: (context, index) {
                  final product = provider.products[index];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Text(product.description),
                    leading: Image.network(product.imageUrl),
                    trailing: Text('Owner: ${product.owner}'),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_product');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
