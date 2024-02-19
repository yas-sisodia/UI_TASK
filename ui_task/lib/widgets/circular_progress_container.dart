import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

class CircularProgressContainer extends StatelessWidget {
  const CircularProgressContainer(
      {Key? key,
      required ValueNotifier<double> valueNotifier,
      required this.percent,
      required this.title,
      required this.subTitle,
      required this.color,
      required this.backgroundColor,
      required this.subTitleColor})
      : _valueNotifier = valueNotifier;

  final ValueNotifier<double> _valueNotifier;
  final double percent;
  final String title;
  final String subTitle;
  final Color color;
  final Color backgroundColor;
  final Color subTitleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 160,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 15,
            ),
            DashedCircularProgressBar.aspectRatio(
              aspectRatio: 1.8, // width ÷ height
              valueNotifier: _valueNotifier,
              progress: percent,
              maxProgress: 100,
              corners: StrokeCap.round,
              foregroundColor: Colors.white,
              backgroundColor: backgroundColor,
              foregroundStrokeWidth: 5,
              backgroundStrokeWidth: 5,
              animation: true,
              child: Center(
                child: ValueListenableBuilder(
                  valueListenable: _valueNotifier,
                  builder: (_, double value, __) => Text(
                    '${value.toInt()}%',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subTitle,
              style: TextStyle(
                  color: subTitleColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
