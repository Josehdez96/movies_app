import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/movies_provider.dart';
import 'providers/navigation_provider.dart';
import 'screens/body_screen.dart';

// https://via.placeholder.com/700x350
// - SliverAppBar con imagen random y sus iconos (iguala el comportamiento del del netflix)
// - ENDPOINT PELICULAS: https://api.themoviedb.org/3/movie/now_playing?api_key=16d550d36c7c3c667bfc2f352f4fbda0&language=es-ES&page=1
// - URL IMAGES: https://image.tmdb.org/t/p/w500/[kqjL17yufvn9OVLyXYpvtyrFfak.jpg]

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((_) => NavigationProvider())),
        ChangeNotifierProvider(create: ((_) => MoviesProvider())),
      ],
      child: MaterialApp(
        title: 'Movies App',
        debugShowCheckedModeBanner: false,
        home: BodyScreen(),
        theme: ThemeData.dark().copyWith(
          canvasColor: Colors.black54,
          scaffoldBackgroundColor: Colors.black54,
        ),
      ),
    );
  }
}
