import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen();

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<String> items = List.generate(20, (index) => 'Item $index');
  bool isSelectionModeActive = false;
  Set<int> selectedItems = Set();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selectable List'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              _deleteSelectedItems();
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              if (isSelectionModeActive) {
                _toggleSelection(index);
              } else {
                print('Tapped: ${items[index]}');
              }
            },
            onLongPress: () {
              setState(() {
                isSelectionModeActive = true;
                selectedItems.add(index);
              });
            },
            tileColor: selectedItems.contains(index)
                ? Colors.blue.withOpacity(0.5)
                : null,
          );
        },
      ),
    );
  }

  void _toggleSelection(int index) {
    setState(() {
      if (selectedItems.contains(index)) {
        selectedItems.remove(index);
        if (selectedItems.isEmpty) {
          isSelectionModeActive = false;
        }
      } else {
        selectedItems.add(index);
      }
    });
  }

  void _deleteSelectedItems() {
    setState(() {
      List<String> updatedList = List.from(items);
      for (int index in selectedItems) {
        updatedList.removeAt(index);
      }
      items = updatedList;
      selectedItems.clear();
      isSelectionModeActive = false;
    });
  }
}
