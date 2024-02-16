import 'package:flutter/material.dart';

class CounterStream extends StatefulWidget {
  const CounterStream({super.key});

  @override
  State<CounterStream> createState() => _CounterStreamState();
}

class _CounterStreamState extends State<CounterStream> {
  // int counter = 30;
  // Stream addCounter() async* {
  //   print(counter);
  //   await Future.delayed(const Duration(seconds: 1));
  //   if (counter != 0) {
  //     yield counter--;
  //     setState(() {});
  //   }
  // }

  ValueNotifier counter = ValueNotifier(30);
  addCounter() async* {
    print(counter.value);
    await Future.delayed(const Duration(seconds: 1));
    // counter.value++;
    if (counter.value != 0) {
      yield counter.value--;
      // setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      // body: ValueListenableBuilder(
      //     valueListenable: counter,
      //     builder: (context, snapshot, _) {
      //       return StreamBuilder(
      //           stream: addCounter(),
      //           builder: (context, snapshots) {
      //             return Center(
      //                 child: Text(
      //               '${snapshots.data}',
      //               style: const TextStyle(fontSize: 30),
      //             ));
      //           });
      //     }),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ValueListenableBuilder(
      //           valueListenable: counter,
      //           builder: (context, snapshot, _) {
      //             return Text(counter.value.toString());
      //           }),
      //       ElevatedButton(
      //           onPressed: () {
      //             addCounter();
      //           },
      //           child: Text('update'))
      //     ],
      //   ),
      // ),
    );
  }
}
