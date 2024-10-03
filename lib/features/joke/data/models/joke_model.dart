import 'package:flutter_clean_architecture/features/joke/domain/entities/joke_entity.dart';

class JokeModel {
  final bool error;
  final String category;
  final String type;
  final String joke;
  final Map<String, bool> flags;
  final int id;
  final bool safe;
  final String lang;

  JokeModel({
    required this.error,
    required this.category,
    required this.type,
    required this.joke,
    required this.flags,
    required this.id,
    required this.safe,
    required this.lang,
  });

  // ฟังก์ชันสำหรับสร้าง JokeModel จาก JSON
  factory JokeModel.fromJson(Map<String, dynamic> json) {
    return JokeModel(
      error: json['error'],
      category: json['category'],
      type: json['type'],
      joke: json['joke'],
      flags: Map<String, bool>.from(json['flags']),
      id: json['id'],
      safe: json['safe'],
      lang: json['lang'],
    );
  }

  // ฟังก์ชันสำหรับแปลง JokeModel เป็น JokeEntity
  JokeEntity toEntity() {
    return JokeEntity(
      joke: joke,
      category: category,
    );
  }
}
