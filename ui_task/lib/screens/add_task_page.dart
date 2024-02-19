import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_task/screens/create_new_task_page.dart';
import 'package:ui_task/widgets/custom_calendar_column.dart';
import 'package:ui_task/widgets/days_widget.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefbec),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Image(
                  image: AssetImage(
                    "assets/left-arrow.png",
                  ),
                  height: 40,
                  width: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Today",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateNewTaskPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff319194)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          "Add Task",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Productive Day, Saurav",
                  style: TextStyle(
                      color: Color(0xffbfbbb2),
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "April,2020",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff272b34)),
              ),
              const SizedBox(
                height: 20,
              ),
              const DaysWidget(),
              const SizedBox(
                height: 10,
              ),
              const CustomCalendarColumn(
                firstTime: '9 PM',
                secondTime: '10 PM',
                thirdTime: '11 PM',
                fourthTime: '12 PM',
                title: 'Project Research',
                subTitle: 'Discuss with the colleagoues\nabout the future plan',
                color: Color(0xffffe4c7),
                subTitleColor: Color(0xffa58e75),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomCalendarColumn(
                firstTime: '9 PM',
                secondTime: '10 PM',
                thirdTime: '11 PM',
                fourthTime: '12 PM',
                title: 'Work On Medical App',
                subTitle: 'Add medicine tab',
                color: Color(0xffd4e4fe),
                subTitleColor: Color(0xff808ca2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
