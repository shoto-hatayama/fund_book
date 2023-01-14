import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<BottomNavigationWidget> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _currentindex,
      onDestinationSelected: (index) => setState(() {
        _currentindex = index;
      }),
      destinations: const [
        NavigationDestination(
            selectedIcon: Icon(Icons.forest_outlined),
            icon: Icon(Icons.forest),
            label: 'MAFF'),
        NavigationDestination(
          selectedIcon: Icon(Icons.business_outlined),
          icon: Icon(Icons.business),
          label: 'JNET21',
        )
      ],
    );
  }
}
