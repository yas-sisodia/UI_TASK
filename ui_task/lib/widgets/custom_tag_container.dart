import 'package:flutter/material.dart';

class CustomTagContainer extends StatelessWidget {
  const CustomTagContainer({
    Key? key,
    required this.backgroundColor,
    required this.tag,
    required this.tagColor,
  }) : super(key: key);
  final Color backgroundColor;
  final String tag;
  final Color tagColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          tag,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: tagColor, fontSize: 12),
        ),
      ),
    );
  }
}