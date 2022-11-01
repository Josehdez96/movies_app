import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
  }) : super(key: key);

  final double toolBarHeight = 50;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black.withOpacity(0.5),
      leading: const Icon(Icons.computer_rounded),
      actions: const [
        _AppBarPaddedIcon(icon: Icons.search),
        _AppBarPaddedIcon(icon: Icons.person),
      ],
      toolbarHeight: toolBarHeight,
      expandedHeight: 450,
      pinned: true,
      // bottom: PreferredSize(
      //   preferredSize: const Size.fromHeight(0),
      //   child: Transform.translate(
      //     offset: const Offset(0, -40),
      //     child: const Text('Botonsisimo'), // TODO: comportamiento raro #2
      //   ),
      // ),
      flexibleSpace: Stack(
        children: [
          const FlexibleSpaceBar(
            background: Image(
              image: NetworkImage('https://via.placeholder.com/400x500'),
              fit: BoxFit.cover,
            ),
          ),
          _CustomTabBar(toolBarHeight: toolBarHeight),
        ],
      ),
    );
  }
}

class _CustomTabBar extends StatelessWidget {
  const _CustomTabBar({
    Key? key,
    required this.toolBarHeight,
  }) : super(key: key);

  final double toolBarHeight;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: toolBarHeight,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'TV Shows',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'Movies',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.red,
                  child: IconButton(
                    // TODO: arreglar tamaño de botón
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarPaddedIcon extends StatelessWidget {
  const _AppBarPaddedIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Icon(icon),
    );
  }
}
