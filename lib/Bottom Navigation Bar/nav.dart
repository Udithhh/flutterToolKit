import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bottom%20Navigation%20Bar/hello.dart';
import 'package:flutter_application_1/Bottom%20Navigation%20Bar/hi.dart';
import 'package:flutter_application_1/Bottom%20Navigation%20Bar/world.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [HiPage(), HelloPage(), WorldPAge()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.red,
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 3000),
                curve: Curves.easeInOut);
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HII"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "HELLO"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "WORLD")
        ],
      ),
    );
  }
}
