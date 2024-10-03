import 'dart:convert';
import 'package:flutter_clean_architecture/features/joke/data/models/joke_model.dart';
import 'package:http/http.dart' as http;

class JokeRemoteDataSource {
  Future<JokeModel> getRandomJoke() async {
    final response = await http
        .get(Uri.parse('https://v2.jokeapi.dev/joke/Any?type=single'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return JokeModel.fromJson(data);
    } else {
      throw Exception('Failed to load joke');
    }
  }
}
