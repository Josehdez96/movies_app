import 'package:flutter/material.dart';
import 'screens/screens.dart';

// https://via.placeholder.com/700x350

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'details': (_) => DetailsScreen(),
      },
      theme: ThemeData.dark().copyWith(
        canvasColor: Colors.black54,
        scaffoldBackgroundColor: Colors.black54,
      ),
    );
  }
}
