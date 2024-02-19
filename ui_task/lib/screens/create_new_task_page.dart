// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_task/widgets/circular_widget.dart';
import 'package:ui_task/widgets/create_new_task_widget.dart';
import 'package:ui_task/widgets/custom_tag_container.dart';
import 'package:ui_task/widgets/start_end_time_widget.dart';

class CreateNewTaskPage extends StatefulWidget {
  const CreateNewTaskPage({super.key});

  @override
  State<CreateNewTaskPage> createState() => _CreateNewTaskPageState();
}

class _CreateNewTaskPageState extends State<CreateNewTaskPage> {
  TextEditingController titleController =
      TextEditingController(text: "Make tasks for the sport app");
  TextEditingController dateController =
      TextEditingController(text: "Mon, 20 April");
  TextEditingController startTimeController =
      TextEditingController(text: "16:00");
  TextEditingController endTimeController =
      TextEditingController(text: "20:00");
  TextEditingController descriptionController = TextEditingController(
      text:
          "Add product categories to the dashboard, change vertical scroll to horizontal. Draw new icons in blue.");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xfffefbec),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xfffabd7e),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 35,
                ),
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
                    CreateNewTaskWidget(
                        titleController: titleController,
                        dateController: dateController),
                    const SizedBox(
                      height: 70,
                    ),
                    StartEndTimeWidget(
                        startTimeController: startTimeController,
                        endTimeController: endTimeController),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      maxLines: 3,
                      controller: descriptionController,
                      decoration: const InputDecoration(
                          label: Text(
                        "Description",
                        style: TextStyle(color: Colors.grey),
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Category",
                      style: TextStyle(
                          color: Color(0xffa5a5a5),
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            CustomTagContainer(
                              backgroundColor: Color(0xffeb6473),
                              tag: 'SPORT APP',
                              tagColor: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomTagContainer(
                              backgroundColor: Color(0xffe2e2e2),
                              tag: 'MEDICAL APP',
                              tagColor: Color(0xff484848),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomTagContainer(
                              backgroundColor: Color(0xffe2e2e2),
                              tag: 'MEDICAL APP',
                              tagColor: Color(0xff484848),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            CustomTagContainer(
                              backgroundColor: Color(0xffe2e2e2),
                              tag: 'NOTES',
                              tagColor: Color(0xff484848),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomTagContainer(
                              backgroundColor: Color(0xffe2e2e2),
                              tag: 'GAMING PLATFORM APP',
                              tagColor: Color(0xff484848),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xff6787e4),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "Create Task",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
