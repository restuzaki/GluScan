import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavbar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 22, 143, 242),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            backgroundColor: const Color.fromARGB(255, 22, 143, 242),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            backgroundColor: const Color.fromARGB(255, 22, 143, 242),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            backgroundColor: const Color.fromARGB(255, 22, 143, 242),
            label: 'person',
          ),
        ],
      ),
    );
  }
}
