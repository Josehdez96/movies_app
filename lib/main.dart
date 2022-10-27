import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/navigation_provider.dart';
import 'screens/body_screen.dart';
import 'screens/details_screen.dart';

// https://via.placeholder.com/700x350
// 1. Provider para la navegación con el bottomNavigationBar
// 2. SliverAppBar con imagen random y sus iconos (iguala el comportamiento del del netflix)

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((_) => NavigationProvider()))
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
