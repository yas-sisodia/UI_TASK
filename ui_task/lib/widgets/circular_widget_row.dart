import 'package:flutter/material.dart';
import 'package:ui_task/widgets/circular_widget.dart';

class CircularWidgetRow extends StatelessWidget {
  const CircularWidgetRow({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
    required this.path,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final Color color;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularWidget(
            path: path,
            padding: 10,
            color: color),
        const SizedBox(
          width: 15,
        ),
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3c414b),
                  fontSize: 20),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                  color: Color(0xffafaba0),
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            )
          ],
        )
      ],
    );
  }
}
