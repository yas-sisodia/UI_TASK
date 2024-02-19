import 'package:flutter/material.dart';

class CustomCalendarColumn extends StatelessWidget {
  const CustomCalendarColumn({
    super.key,
    required this.firstTime,
    required this.secondTime,
    required this.thirdTime,
    required this.fourthTime,
    required this.title,
    required this.subTitle,
    required this.color,
    required this.subTitleColor,
  });

  final String firstTime;
  final String secondTime;
  final String thirdTime;
  final String fourthTime;
  final String title;
  final String subTitle;
  final Color color;
  final Color subTitleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "${firstTime}  - - - - - - - - - - - - - - - - - - - - - - - - -\n ",
              style: const TextStyle(
                  color: Color(0xffa5a293), fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${secondTime}\n\n\n${thirdTime}\n\n\n${fourthTime}",
              style: const TextStyle(
                  color: Color(0xffa5a293), fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 30, top: 30, bottom: 30, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Color(0xff191622),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(color: subTitleColor),
                      maxLines: 2,
                      // locale: Locale(),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
