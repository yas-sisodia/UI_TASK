import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class StartEndTimeWidget extends StatelessWidget {
  const StartEndTimeWidget({
    super.key,
    required this.startTimeController,
    required this.endTimeController,
  });

  final TextEditingController startTimeController;
  final TextEditingController endTimeController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: TextField(
            expands: false,
            controller: startTimeController,
            decoration: const InputDecoration(
              suffixIcon: Icon(
                Iconsax.arrow_down_1,
                color: Colors.black,
              ),
              label: Text(
                "Start Time",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 60,
        ),
        Expanded(
          child: TextField(
            expands: false,
            controller: endTimeController,
            decoration: const InputDecoration(
              suffixIcon: Icon(
                Iconsax.arrow_down_1,
                color: Colors.black,
              ),
              label: Text(
                "End Time",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}