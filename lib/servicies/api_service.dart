import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {

  final http.Client client;

  ApiService({required this.client});

  Future<List<Post>> fetchPosts() async {
    final response = await client.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception("Error al cargar los posts");
    }
  }
}

class Post {
  final int id;
  final String title;
  final String body;
  final int userId;

  Post({required this.id, required this.title, required this.body,required this.userId});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      userId: json['userId'],
    );
  }
}
