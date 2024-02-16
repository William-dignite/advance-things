import 'package:flutter/material.dart';

class FourView extends StatelessWidget {
  const FourView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Four',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        )
      ],
    );
  }
}
