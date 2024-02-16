import 'package:flutter/material.dart';

class FadingTextList extends StatelessWidget {
  final List<String> items = List.generate(50, (index) => 'Item $index');

  FadingTextList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FadingTextItem(
          text:
              'In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.In this example, the list consists of both the fading background (the first item in the list) and the regular list items. The Opacity widget is used to adjust the transparency of each item based on its position in the list. Adjust the height of the faded background and other parameters to fit your design requirements.',
        ),
      ),
    );
  }
}

class FadingTextItem extends StatelessWidget {
  final String text;

  const FadingTextItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.center,
          colors: [Colors.transparent, Colors.black],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: SingleChildScrollView(
        child: Text(
          text,
          style:
              const TextStyle(fontSize: 13.0), // Adjust the font size as needed
        ),
      ),
    );
  }
}
