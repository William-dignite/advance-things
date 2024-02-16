import 'package:flutter/material.dart';

class FloatButtonCompnent extends StatelessWidget {
  const FloatButtonCompnent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 42,
      width: 42,
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          blurRadius: 12,
          offset: Offset(0, 8),
          color: const Color(0xffF85E00).withOpacity(0.32),
          // color:
        )
      ]),
      child: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        shape: const CircleBorder(),
        backgroundColor: const Color(0xffF85E00),
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}
