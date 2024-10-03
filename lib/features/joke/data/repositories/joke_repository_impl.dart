import 'package:either_dart/either.dart';
import 'package:flutter_clean_architecture/core/error/exception.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/features/joke/data/datasources/joke_remote_data_source.dart';
import 'package:flutter_clean_architecture/features/joke/domain/entities/joke_entity.dart';
import 'package:flutter_clean_architecture/features/joke/domain/repositories/joke_repository.dart';

class JokeRepositoryImpl implements JokeRepository {
  final JokeRemoteDataSource remoteDataSource;

  JokeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, JokeEntity>> getRandomJoke() async {
    try {
      final jokeModel = await remoteDataSource.getRandomJoke();

      JokeEntity jokeEntity = jokeModel.toEntity();

      return Right(jokeEntity);
    } catch (error) {
      if (error is ServerException) {
        return Left(ServerFailure());
      } else if (error is NetworkException) {
        return Left(NetworkFailure());
      } else {
        return Left(ServerFailure("Unexpected error"));
      }
    }
  }
}
