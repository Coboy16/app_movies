import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import '../models/models.dart';

class CardSwiperWidget extends StatelessWidget {
  final List<Movie> movies;

  const CardSwiperWidget({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (movies.isEmpty) {
      return SizedBox(
        width: double.infinity,
        height: size.height * 0.5,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.5,
      child: CardSwiper(
        cardBuilder: (context, index, horizontalOffsetPercentage,
            verticalOffsetPercentage) {
          final movie2 = movies[index];
          movie2.heroId = 'swiper-${movie2.id}';
          return GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, 'details', arguments: movie2),
            child: Hero(
              tag: movie2.heroId!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: const AssetImage('assets/no-image.jpg'),
                  image: NetworkImage(movie2.fullPosterImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },

        cardsCount: movies.length,
        // layout: SwiperLayout.STACK,
      ),
    );
  }
}
