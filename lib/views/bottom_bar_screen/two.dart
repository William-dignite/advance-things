import 'package:flutter/material.dart';
import 'package:nested_navbar/views/bottom_bar_screen/bar_testing_view.dart';

class TwoView extends StatelessWidget {
  const TwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            'Two',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          const BottomBarTestingView(),
                      transitionsBuilder:
                          (context, animation1, animation2, child) {
                        const begin = 0.0;
                        const end = 1.0;
                        const curve = Curves.linear;
                        return FadeTransition(
                            opacity: animation1.drive(
                              Tween(
                                begin: begin,
                                end: end,
                              ).chain(CurveTween(curve: curve)),
                            ),
                            child: child);
                      }));
            },
            child: const Text('next'))
      ],
    );
  }
}
