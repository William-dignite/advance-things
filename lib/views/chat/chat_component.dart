import 'package:flutter/material.dart';
import 'package:nested_navbar/views/chat/chat_bubble.dart';

class SentMessage extends StatelessWidget {
  final String message;

  const SentMessage({super.key, required this.message});
  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Text(
              message,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Monstserrat', fontSize: 14),
            ),
          ),
        ),
        CustomPaint(
            painter: Triangle(
          Colors.grey.shade900,
        )),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(right: 18.0, left: 50, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          messageTextGroup,
        ],
      ),
    );
  }
}
