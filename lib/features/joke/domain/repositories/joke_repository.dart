import 'package:either_dart/either.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/features/joke/domain/entities/joke_entity.dart';

abstract class JokeRepository {
  Future<Either<Failure, JokeEntity>> getRandomJoke();
}
