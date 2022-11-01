import 'package:flutter/material.dart';

class MovieCarousel extends StatelessWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 180,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _CarouselTitle(),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (_, index) => _Poster(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CarouselTitle extends StatelessWidget {
  const _CarouselTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Populares',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}

class _Poster extends StatelessWidget {
  const _Poster({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 7),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: const Image(
          width: 100,
          fit: BoxFit.fill,
          image: NetworkImage('https://via.placeholder.com/400x500'),
        ),
      ),
    );
  }
}
