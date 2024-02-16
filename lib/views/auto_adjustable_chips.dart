import 'package:flutter/material.dart';

class ChipWrapper extends StatelessWidget {
  const ChipWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> chipData = [
      'Tag 1',
      'Tag 2 hellos done',
      'Tag 3',
      'Tag 4',
      'Tag 5',
      'Tag 6 ',
      'Tag 7',
      'Tag 8 helloooo ',
    ];

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 8.0, // Spacing between chips
        runSpacing: 8.0, // Spacing between chip lines
        children: chipData.map((tag) {
          return Chip(
            label: Text(tag),
            avatar: Icon(Icons.ad_units),
            deleteIcon: null,
            deleteIconColor: Colors.transparent,
            onDeleted: () {
              // Handle chip deletion if needed
            },
          );
        }).toList(),
      ),
    );
  }
}
