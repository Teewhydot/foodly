import 'package:flutter/material.dart';
import 'package:foodly/reusables/constants.dart';

class ReusableFilterChip extends StatefulWidget {
  const ReusableFilterChip({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);
  final Text text;
  final bool isSelected;

  @override
  State<ReusableFilterChip> createState() => _ReusableFilterChipState();
}

class _ReusableFilterChipState extends State<ReusableFilterChip> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
        selectedColor: kGreenColor,
        pressElevation: 2,
        selected: isSelected,
        label: widget.text,
        onSelected: (val) {
          setState(() {
            isSelected = val;
          });
        });
  }
}
