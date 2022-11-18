import 'package:flutter/material.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:movies_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    MoviesProvider moviesProvider = Provider.of<MoviesProvider>(context);
    moviesProvider.fetchNowPlayingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              MovieCarousel(),
              MovieCarousel(),
              MovieCarousel(),
              MovieCarousel(),
              MovieCarousel(),
              MovieCarousel(),
              MovieCarousel(),
              MovieCarousel(),
            ],
          ),
        )
      ],
    );
  }
}
