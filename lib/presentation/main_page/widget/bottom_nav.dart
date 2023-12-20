import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (BuildContext context, int value, _) {
        return BottomNavigationBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          currentIndex: indexChangeNotifier.value,
          onTap: (val) {
            indexChangeNotifier.value = val;
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(
            color: Colors.grey,
          ),
          selectedLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 148, 147, 147),
          ),
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "New & Hot",
              icon: Icon(Icons.collections),
            ),
            BottomNavigationBarItem(
              label: "Fast Laughs",
              icon: Icon(Icons.emoji_emotions),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Download",
              icon: Icon(Icons.download),
            ),
          ],
        );
      },
    );
  }
}
