import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://example.com/api"; // Replace with your API base URL

  Future<List<dynamic>> fetchProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/products'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<void> addProduct(String name, String description, File image, String owner) async {
    String imageUrl = await uploadImage(image);

    final response = await http.post(
      Uri.parse('$baseUrl/products'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'description': description,
        'image_url': imageUrl,
        'owner': owner,
      }),
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to add product');
    }
  }

  Future<String> uploadImage(File image) async {
    var request = http.MultipartRequest('POST', Uri.parse('$baseUrl/upload'));
    request.files.add(await http.MultipartFile.fromPath('image', image.path));

    var res = await request.send();
    if (res.statusCode == 200) {
      var response = await http.Response.fromStream(res);
      var responseData = json.decode(response.body);
      return responseData['image_url']; // Adjust based on your API's response
    } else {
      throw Exception('Failed to upload image');
    }
  }
}
