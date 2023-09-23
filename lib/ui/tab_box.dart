import 'package:dio_practics/ui/counter_screen/counter_screen.dart';
import 'package:dio_practics/ui/login_screen/login_screen.dart';
import 'package:dio_practics/ui/user_screen.dart';
import 'package:flutter/material.dart';

class TabBoxScreen extends StatefulWidget {
  const TabBoxScreen({Key? key}) : super(key: key);

  @override
  State<TabBoxScreen> createState() => _TabBoxScreenState();
}

class _TabBoxScreenState extends State<TabBoxScreen> {
  List<Widget> activeScreen = [];
  int screenIndex = 0;

  @override
  void initState() {
    activeScreen = [
      UserCubitScreen(),
      CounterScreen(),
      LoginScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activeScreen[screenIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.teal,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: screenIndex,
          onTap: (v) {
        setState(() {
          screenIndex = v;
        });
          },
          items: const [
            BottomNavigationBarItem(label: "user", icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                label: "counter", icon: Icon(Icons.calculate)),
            BottomNavigationBarItem(icon: Icon(Icons.multiple_stop_sharp),label: "Register"),
          ]),
    );
  }
}
