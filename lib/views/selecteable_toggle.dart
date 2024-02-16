import 'package:flutter/material.dart';

class OnceSelectableTogle extends StatefulWidget {
  const OnceSelectableTogle({super.key});

  @override
  State<OnceSelectableTogle> createState() => _OnceSelectableTogleState();
}

class _OnceSelectableTogleState extends State<OnceSelectableTogle> {
  int? selectedNumber;

  List<String> titles = [
    "Not at All",
    "A Little bit",
    "Somewhat",
    "Quite a bit",
    "Very much"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < titles.length; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedNumber = i == selectedNumber ? null : i;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: i == selectedNumber
                                ? Colors.green
                                : Colors.grey,
                            borderRadius: i == selectedNumber
                                ? BorderRadius.circular(22)
                                : BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              i.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                color: i == selectedNumber
                                    ? Colors.green
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // VerticalSpacing(5.h),
                        Text(
                          titles[i].toString(),
                          style: const TextStyle(
                              fontSize: 10, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
