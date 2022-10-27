import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/navigation_provider.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

enum BottomNavigationBarScreens {
  homeScreen,
  gamesScreen,
  newAndHotScreen,
  fastLaughsScreen,
  downloadsScreen
}

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _SelectedScreen(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class _SelectedScreen extends StatelessWidget {
  const _SelectedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int currentIndex =
        Provider.of<NavigationProvider>(context).selectedMenuOption;

    switch (BottomNavigationBarScreens.values[currentIndex].index) {
      case 0:
        return HomeScreen();
      case 1:
        return GamesScreen();
      case 2:
        return NewAndHotScreen();
      case 3:
        return FastLaughsScreen();
      case 4:
        return DownloadsScreen();
      default:
        return HomeScreen();
    }
  }
}
