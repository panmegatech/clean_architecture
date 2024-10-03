import 'package:flutter_clean_architecture/features/joke/data/datasources/joke_remote_data_source.dart';
import 'package:flutter_clean_architecture/features/joke/data/repositories/joke_repository_impl.dart';
import 'package:flutter_clean_architecture/features/joke/domain/repositories/joke_repository.dart';
import 'package:flutter_clean_architecture/features/joke/domain/usecases/get_random_joke_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  // ตรวจสอบว่ามี JokeRemoteDataSource ลงทะเบียนแล้วหรือยัง
  if (!getIt.isRegistered<JokeRemoteDataSource>()) {
    getIt.registerFactory<JokeRemoteDataSource>(() => JokeRemoteDataSource());
  }

  // ตรวจสอบว่ามี JokeRepository ลงทะเบียนแล้วหรือยัง
  if (!getIt.isRegistered<JokeRepository>()) {
    getIt.registerFactory<JokeRepository>(
      () => JokeRepositoryImpl(getIt<JokeRemoteDataSource>()),
    );
  }

  // ตรวจสอบว่ามี GetRandomJoke ลงทะเบียนแล้วหรือยัง
  if (!getIt.isRegistered<GetRandomJoke>()) {
    getIt.registerFactory<GetRandomJoke>(
      () => GetRandomJoke(getIt<JokeRepository>()),
    );
  }
}
