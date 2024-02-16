import 'package:flutter/material.dart';
import 'package:nested_navbar/views/bottom_bar_screen/bottombar_component.dart';
import 'package:nested_navbar/views/bottom_bar_screen/float_buttton_component.dart';

class BottomBarTestingView extends StatelessWidget {
  const BottomBarTestingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatButtonCompnent(),
      bottomNavigationBar: BottomBarComponent(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Hello I'm for Testing!!!")],
        ),
      ),
    );
  }
}
