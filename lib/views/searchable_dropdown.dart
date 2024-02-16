import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'dart:developer';

const List<Job> _list = [
  Job('Developer', Icons.developer_mode),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Student', Icons.school),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Developer', Icons.developer_mode),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Student', Icons.school),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Developer', Icons.developer_mode),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Student', Icons.school),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Developer', Icons.developer_mode),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Student', Icons.school),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Developer', Icons.developer_mode),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Student', Icons.school),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Developer', Icons.developer_mode),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Student', Icons.school),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Developer', Icons.developer_mode),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Student', Icons.school),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
];

class SearchDropdownComponent extends StatefulWidget {
  const SearchDropdownComponent({Key? key}) : super(key: key);

  @override
  State<SearchDropdownComponent> createState() =>
      _SearchDropdownComponentState();
}

class _SearchDropdownComponentState extends State<SearchDropdownComponent> {
  @override
  Widget build(BuildContext context) {
    return CustomDropdown<Job>.search(
      hideSelectedFieldWhenExpanded: true,
      hintText: 'Select Category',
      items: _list,
      // excludeSelected: false,
      decoration: CustomDropdownDecoration(
          closedFillColor: const Color(0xffF9FAFA),
          closedBorderRadius: BorderRadius.circular(12),
          closedSuffixIcon: const Icon(Icons.search),
          expandedBorderRadius: BorderRadius.circular(12),
          overlayScrollbarDecoration: ScrollbarThemeData(
              crossAxisMargin: 16,
              mainAxisMargin: 5,
              trackColor: MaterialStateProperty.all(Colors.transparent),
              trackBorderColor:
                  MaterialStateProperty.all(const Color(0xffE8E8E8)),
              thumbColor: MaterialStateProperty.all(const Color(0xff646565)),
              thickness: MaterialStateProperty.all(2),
              trackVisibility: MaterialStateProperty.all(true)),
          searchFieldDecoration: SearchFieldDecoration(
              suffixIcon: (VoidCallback onPressed) {
                return const SizedBox.shrink();
              },
              border: const UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0xffB7B8B8),
              )),
              fillColor: Colors.transparent),
          expandedBorder:
              Border.all(strokeAlign: BorderSide.strokeAlignCenter)),
      onChanged: (value) {
        log('changing value to: $value');
      },
    );
  }
}

class Job with CustomDropdownListFilter {
  final String name;
  final IconData icon;
  const Job(this.name, this.icon);

  @override
  String toString() {
    return name;
  }

  @override
  bool filter(String query) {
    return name.toLowerCase().contains(query.toLowerCase());
  }
}
