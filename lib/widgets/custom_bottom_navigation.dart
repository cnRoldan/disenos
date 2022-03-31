import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromARGB(255, 125, 126, 151),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined, size: 30,), label: 'Calendario'),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline_outlined, size: 30,), label: 'Gráfica'),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined, size: 30,), label: 'Usuarios'),
    ]);
  }
}
