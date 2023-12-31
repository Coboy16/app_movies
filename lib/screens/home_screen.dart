import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/movies_provider.dart';
import '../search/search_delegate.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () => showSearch(
              context: context,
              delegate: MovieSearchDelegate(),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Tarjetas principales
            CardSwiperWidget(movies: moviesProvider.onDisplayMovies),

            // Slider de películas
            MovieSlider(
              movies: moviesProvider.popularMovies, // populares,
              title: 'Populares', // opcional
              onNextPage: () => moviesProvider.getPopularMovies(),
            ),
          ],
        ),
      ),
    );
  }
}
