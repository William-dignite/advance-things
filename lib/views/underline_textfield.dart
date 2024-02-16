import 'package:flutter/material.dart';

class UnderlineTextField extends StatelessWidget {
  const UnderlineTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: TextField(
        maxLines: 6,
        maxLength: 100,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0), // Adjust as needed
          hintText: 'Start typing here...',
          hintStyle: TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.blue), // Change color as needed
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.blue), // Change color as needed
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
          ),
        ),
      ),
    );
  }
}
