import 'package:blinkit_clone/repository/screens/cart/cartscreen.dart';
import 'package:blinkit_clone/repository/screens/category/categoryscreen.dart';
import 'package:blinkit_clone/repository/screens/home/homescreen.dart';
import 'package:blinkit_clone/repository/screens/print/printscreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int currentIdx = 0;

  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    Categoryscreen(),
    Printscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIdx, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIdx,
        onTap: (index) {
          setState(() {
            currentIdx = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "shopping-bag 1.png"),
            label: "Caft",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "category 1.png"),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "printer 1.png"),
            label: "Print",
          ),
        ],
      ),
    );
  }
}
