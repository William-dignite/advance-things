import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart'
    show CircularPercentIndicator, CircularStrokeCap;
import 'dart:math' as math;

import 'package:percent_indicator/percent_indicator.dart';

class CircleProgressView extends StatelessWidget {
  const CircleProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: -math.pi / -9.4,
            child: CircularPercentIndicator(
              radius: 30,
              lineWidth: 2,
              percent: 0.75,
              arcBackgroundColor: Colors.transparent,
              backgroundWidth: 10,
              arcType: ArcType.FULL,
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.green,
            ),
          ),
          const Text(
            "75%",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
// CircularPercentIndicator(
//               radius: 30,
//               lineWidth: 2,
//               fillColor: Colors.white,
//               percent: 0.75,
//               arcBackgroundColor:
//                   Colors.transparent, // Set background color to transparent
//               backgroundWidth: 10,
//               animateFromLastPercent: false,
//               arcType: ArcType.FULL, // Use FULL instead of FULL_REVERSED
//               circularStrokeCap:
//                   CircularStrokeCap.butt, // Use BUTT instead of ROUND
//               backgroundColor: Colors.white,
//               progressColor: Colors.green,
//             ),