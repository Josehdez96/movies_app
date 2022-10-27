import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movies_app/providers/navigation_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return BottomNavigationBar(
      onTap: (index) {
        navigationProvider.selectedMenuOption = index;
      },
      currentIndex: navigationProvider.selectedMenuOption,
      iconSize: 30,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey[600],
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gamepad),
          label: 'Games',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_arrow),
          label: 'New & Hot',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tag_faces_rounded),
          label: 'Fast Laughs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.download_for_offline_sharp),
          label: 'Downloads',
        ),
      ],
    );
  }
}
