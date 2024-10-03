import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/features/joke/domain/entities/joke_entity.dart';
import 'package:flutter_clean_architecture/features/joke/domain/usecases/get_random_joke_usecase.dart';

part 'joke_event.dart';
part 'joke_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  final GetRandomJoke getRandomJoke;

  JokeBloc({required this.getRandomJoke}) : super(JokeInitial()) {
    on<GetJokeEvent>((event, emit) async {
      emit(JokeLoading());

      final result = await getRandomJoke.execute();

      result.fold(
        (failure) => emit(JokeError(_mapFailureToMessage(failure))),
        (joke) => emit(JokeLoaded(joke)),
      );
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure _:
        return 'Server Failure';
      case NetworkFailure _:
        return 'Network Failure';
      default:
        return 'Unexpected Error';
    }
  }
}
