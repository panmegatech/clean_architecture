import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/joke/presentation/bloc/joke/joke_bloc.dart';
import 'package:flutter_clean_architecture/features/joke/presentation/widgets/custom_center.dart';
import 'package:flutter_clean_architecture/features/joke/presentation/widgets/custom_text.dart';

class JokePage extends StatelessWidget {
  const JokePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Clean Architecture',
          size: 30,
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          const CustomText(
            "Random Joke",
          ),
          const Divider(),
          BlocBuilder<JokeBloc, JokeState>(
            builder: (context, state) {
              if (state is JokeInitial) {
                return const CustomCenter(
                    child: CustomText(
                  'Press the button to get a joke',
                  fontWeight: FontWeight.normal,
                ));
              } else if (state is JokeLoading) {
                return const CustomCenter(child: CircularProgressIndicator());
              } else if (state is JokeLoaded) {
                //todo hasData
                return CustomCenter(
                    child: CustomText(
                  "${' ' * 6} ${state.joke.joke}",
                  fontWeight: FontWeight.normal,
                ));
              } else if (state is JokeError) {
                return CustomCenter(child: CustomText(state.message));
              }
              return const SizedBox();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<JokeBloc>(context).add(GetJokeEvent());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
