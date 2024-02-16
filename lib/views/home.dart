import 'package:flutter/material.dart';
import 'package:nested_navbar/views/bottom_bar_screen/bottombar_component.dart';
import 'package:nested_navbar/views/bottom_bar_screen/float_buttton_component.dart';
import 'package:nested_navbar/views/bottom_bar_screen/four.dart';
import 'package:nested_navbar/views/bottom_bar_screen/one.dart';
import 'package:nested_navbar/views/bottom_bar_screen/three.dart';
import 'package:nested_navbar/views/bottom_bar_screen/two.dart';
import 'package:nested_navbar/views/stream_counter.dart';

// ignore: must_be_immutable
class HomeView extends StatefulWidget {
  HomeView({super.key, required this.onItem});
  int onItem = 0;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: getSelectedWidget(index: widget.onItem),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FloatButtonCompnent(),
        appBar: AppBar(
          title: const Text('NavBar Practice'),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            // selectedIconTheme: IconThemeData(color: const Color(0xffF85E00)),
            // mouseCursor: MouseCursor.defer,
            elevation: 20,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: widget.onItem == 0
                      ? const Color(0xffF85E00)
                      : Colors.grey,
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
                      color: widget.onItem == 1
                          ? const Color(0xffF85E00)
                          : Colors.grey,
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
                      color: widget.onItem == 2
                          ? const Color(0xffF85E00)
                          : Colors.grey,
                    ),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: widget.onItem == 3
                      ? const Color(0xffF85E00)
                      : Colors.grey,
                ),
                label: '',
              ),
            ],
            selectedFontSize: 0,
            unselectedFontSize: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: widget.onItem,
            onTap: (index) {
              widget.onItem = index;
              setState(() {});
            },
          ),
        )
        // bottomNavigationBar: BottomBarComponent(),
        );
    // return getSelectedWidget(index: widget.onItem);
  }
}

Widget? getSelectedWidget({required int index}) {
  Widget? widget;

  switch (index) {
    case 0:
      widget = const OneView();
      break;
    case 1:
      widget = const TwoView();
      break;
    case 2:
      widget = const ThreeView();
    case 3:
      widget = const FourView();
      break;
    default:
  }
  return widget;
}
