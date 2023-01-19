import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  final Function(int index) setSelectedIndex;
  final int selectedIndex;
  const BottomNavigationWidget(
      {super.key, required this.setSelectedIndex, required this.selectedIndex});

  @override
  State<BottomNavigationWidget> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: widget.selectedIndex,
      onDestinationSelected: (index) => setState(() {
        widget.setSelectedIndex(index);
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
