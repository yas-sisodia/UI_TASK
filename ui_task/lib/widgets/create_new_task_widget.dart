import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_task/widgets/circular_widget.dart';

class CreateNewTaskWidget extends StatelessWidget {
  const CreateNewTaskWidget({
    super.key,
    required this.titleController,
    required this.dateController,
  });

  final TextEditingController titleController;
  final TextEditingController dateController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Create new task",
          style: TextStyle(
              color: Color(0xff1a2437),
              fontWeight: FontWeight.bold,
              fontSize: 28),
        ),
        const SizedBox(
          height: 25,
        ),
        TextField(
          controller: titleController,
          decoration: const InputDecoration(
              label: Text(
            "Title",
            style: TextStyle(color: Colors.grey),
          )),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                expands: false,
                controller: dateController,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Iconsax.arrow_down_1,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Date",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            CircularWidget(
                path: "assets/calendar.png",
                padding: 10,
                color: const Color(0xff30929a))
          ],
        ),
      ],
    );
  }
}
