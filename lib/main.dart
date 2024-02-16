import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nested_navbar/views/auto_adjustable_chips.dart';
import 'package:nested_navbar/views/chat/chat_view.dart';
import 'package:nested_navbar/views/expandable_textfield.dart';
import 'package:nested_navbar/views/multi_selectable_tiles.dart';
import 'package:nested_navbar/views/selecteable_toggle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyHomePage(
      //   title: 'Helllo!!!!!!!!!!1',
      // ),
      home: Scaffold(
          backgroundColor: Colors.white,
          floatingActionButton: FloatingActionButton(onPressed: () {}),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('hello'),
                GestureDetector(
                    onTap: () {
                      print('Tapped');
                    },
                    child: SvgPicture.asset(
                      // 'assets/images/image 24.svg',
                      'assets/images/Mask group.svg',
                      // color: Colors.black,
                    )),
              ],
            ),
            //     child: AutoExpandableTextField(
            //   showCursor: true,
            //   // maxLines:
            //   //     null, // Setting maxLines to null allows the TextField to expand
            //   decoration: InputDecoration(
            //       hintText: 'Type here...',
            //       border:
            //           OutlineInputBorder(borderRadius: BorderRadius.circular(14))),

            //   controller: TextEditingController(),
            // )),
          )),
    );
  }
}

// class HomeForKeyPad extends StatelessWidget {
  // // const HomeForKeyPad({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   TextEditingController textController = TextEditingController();
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: const SafeArea(
    //     child: CircleProgressView(),
        // child: Column(
        //   children: [
        //     TextField(
        //       controller: textController,
        //     ),
        //     const Spacer(),
        //     NumericKeypad(
        //       controller: textController,
        //     ),
        //   ],
        // ),
    //   ),
    // );
//   }
// }
