import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/joke/domain/usecases/get_random_joke_usecase.dart';
import 'package:flutter_clean_architecture/features/joke/presentation/bloc/joke/joke_bloc.dart';
import 'package:flutter_clean_architecture/features/joke/presentation/joke_page.dart';
import 'package:flutter_clean_architecture/setup_getit.dart';

void main() {
  setup();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => JokeBloc(getRandomJoke: getIt<GetRandomJoke>()),
    )
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: JokePage(),
    );
  }
}
