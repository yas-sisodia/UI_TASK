import 'package:flutter/material.dart';

class DaysWidget extends StatelessWidget {
  const DaysWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Text(
              "Sun \n 5",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            // Text("5")
          ],
        ),
        SizedBox(
          width: 20,
        ),
        // Text(
        //   "Mon\n 6",
        //   style: TextStyle(
        //       color: Color(0xff969287),
        //       fontWeight: FontWeight.bold,
        //       fontSize: 16),
        // ),
        Text.rich(
          TextSpan(
              text: 'Mon',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff969287),
                  fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: '\n 6',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )
              ]),
        ),
        SizedBox(
          width: 20,
        ),
        Text.rich(
          TextSpan(
              text: 'Tue',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff969287),
                  fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: '\n 7',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )
              ]),
        ),
        SizedBox(
          width: 20,
        ),
        Text.rich(
          TextSpan(
              text: 'Wed',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff969287),
                  fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: '\n 8',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )
              ]),
        ),
        SizedBox(
          width: 20,
        ),
        Text.rich(
          TextSpan(
              text: 'Thu',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff969287),
                  fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: '\n 9',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )
              ]),
        ),
        SizedBox(
          width: 20,
        ),
        Text.rich(
          TextSpan(
              text: 'Fri',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff969287),
                  fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: '\n 10',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )
              ]),
        ),
        SizedBox(
          width: 19,
        ),
        Text.rich(
          TextSpan(
              text: 'Sat',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff969287),
                  fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: '\n 11',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )
              ]),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
