import 'package:flutter/material.dart';

ValueNotifier<int> indexChangerNotifier = ValueNotifier(0);

class Bottomnavwidget extends StatelessWidget {
  const Bottomnavwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangerNotifier,
      builder: (context, int newindex, _) {
        return BottomNavigationBar(
            backgroundColor: Colors.black,
            elevation: 0,
            onTap: (index) {
              indexChangerNotifier.value = index;
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: newindex,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections), label: "New & Hot"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions), label: "Fast Laugh"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: "Downloads"),
            ]);
      },
    );
  }
}
