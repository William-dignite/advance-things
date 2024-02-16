import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KeyPadController extends GetxController {
  void input(String text, TextEditingController controller) {
    final value = controller.text + text;
    controller.text = value;
  }
}

class NumericKeypad extends StatefulWidget {
  final TextEditingController controller;

  const NumericKeypad({super.key, required this.controller});

  @override
  State<NumericKeypad> createState() => _NumericKeypadState();
}

class _NumericKeypadState extends State<NumericKeypad> {
  KeyPadController keyPadController = Get.put(KeyPadController());
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
  }

  @override
  void dispose() {
    // dispose stuff later
    super.dispose();
  }

  // 1
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildButton('1'),
            _buildButton('2'),
            _buildButton('3'),
          ],
        ),
        Row(
          children: [
            _buildButton('4'),
            _buildButton('5'),
            _buildButton('6'),
          ],
        ),
        Row(
          children: [
            _buildButton('7'),
            _buildButton('8'),
            _buildButton('9'),
          ],
        ),
        Row(
          children: [
            _buildButton(''),
            _buildButton('0'),
            _buildButton('⌫', onPressed: backspace),
          ],
        ),
      ],
    );
  }

  // 2
  // Individual keys
  Widget _buildButton(String text, {onPressed}) {
    return Expanded(
      child: TextButton(
        onPressed:
            onPressed ?? () => keyPadController.input(text, widget.controller),
        child: Text(text),
      ),
    );
  }

  void backspace() {
    final value = _controller.text;
    if (value.isNotEmpty) {
      _controller.text = value.substring(0, value.length - 1);
    }
  }
}
