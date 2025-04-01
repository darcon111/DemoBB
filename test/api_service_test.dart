import 'package:demobb/servicies/api_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'dart:convert';

// Generar mocks con build_runner
@GenerateMocks([http.Client])
import 'package:http/testing.dart' as http_testing;
import 'api_service_test.mocks.dart';

//class MockCliente extends Mock implements http.Client {}

void main() {
  group('ApiService', () {

    late ApiService apiService;
    late MockClient mockClient;

    setUp(() {
      mockClient = MockClient();
      apiService = ApiService(client: mockClient);
    });

    test('fetchPosts devuelve una lista de posts cuando el código de estado es 200', () async {

      final mockResponse = jsonEncode([
        {"id": 1, "title": "Post 1", "body": "Contenido del post 1","userId": 1},
        {"id": 2, "title": "Post 2", "body": "Contenido del post 2","userId": 1},
      ]);

      when(mockClient.get(Uri.parse("https://jsonplaceholder.typicode.com/posts")))
          .thenAnswer((_) async => http.Response(mockResponse, 200));

      final posts = await apiService.fetchPosts();

      print(posts.length);

      expect(posts.length, equals(2));
      expect(posts[0].title, equals("Post 1"));
      expect(posts[1].body, equals("Contenido del post 2"));
    });

    /*test('fetchPosts lanza una excepción cuando la respuesta no es 200', () async {
      when(mockClient.get(Uri.parse("https://jsonplaceholder.typicode.com/posts")))
          .thenAnswer((_) async => http.Response("Error", 404));

      expect(() => apiService.fetchPosts(), throwsException);
    });*/
  });
}
