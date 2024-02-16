import 'package:flutter/material.dart';
import 'package:nested_navbar/views/bottom_bar_screen/four.dart';
import 'package:nested_navbar/views/bottom_bar_screen/one.dart';
import 'package:nested_navbar/views/bottom_bar_screen/three.dart';
import 'package:nested_navbar/views/bottom_bar_screen/two.dart';
import 'package:nested_navbar/views/home.dart';

class BottomBarComponent extends StatefulWidget {
  const BottomBarComponent({super.key});

  @override
  State<BottomBarComponent> createState() => _BottomBarComponentState();
}

class _BottomBarComponentState extends State<BottomBarComponent> {
  int onItem = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        elevation: 20,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: onItem == 0 ? const Color(0xffF85E00) : Colors.grey,
            ),

            label: '',
            // backgroundColor:
          ),
          BottomNavigationBarItem(
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.message,
                  color: onItem == 1 ? const Color(0xffF85E00) : Colors.grey,
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.card_travel_rounded,
                  color: onItem == 2 ? const Color(0xffF85E00) : Colors.grey,
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: onItem == 3 ? const Color(0xffF85E00) : Colors.grey,
            ),
            label: '',
          ),
        ],
        selectedFontSize: 0,
        unselectedFontSize: 0,
        // fixedColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.transparent,
        currentIndex: onItem,
        onTap: (index) {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  HomeView(onItem: index),
              transitionsBuilder: (context, animation1, animation2, child) {
                const begin = 0.0;
                const end = 1.0;
                const curve = Curves.linear;

                var opacityTween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                var opacityAnimation = animation1.drive(opacityTween);

                return FadeTransition(opacity: opacityAnimation, child: child);
              },
            ),
          );

          onItem = index;
          setState(() {});
        },
      ),
    );
  }
}
