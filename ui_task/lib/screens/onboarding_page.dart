// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_task/screens/add_task_page.dart';
import 'package:ui_task/widgets/circular_progress_container.dart';
import 'package:ui_task/widgets/circular_widget.dart';
import 'package:ui_task/widgets/circular_widget_row.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    // final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
    return Scaffold(
      backgroundColor: const Color(0xfffefbec),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xfffabd7e),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage('assets/more.png'),
                          height: 40,
                          width: 40,
                        ),
                        Image(
                          image: AssetImage('assets/search.png'),
                          height: 30,
                          width: 30,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                color: const Color(0xff6289e5),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          const Positioned(
                            top: 5,
                            left: 7,
                            child: Image(
                              image: AssetImage('assets/man.png'),
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ]),
                        const Column(
                          children: [
                            Text(
                              "Saurav Suman",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: Color(0xff0e1f3c)),
                            ),
                            Text(
                              "App Developer",
                              style: TextStyle(
                                  color: Color(0xffc28f58),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "My Tasks",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0e1f3c),
                              fontSize: 28),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddTaskPage()));
                          },
                          child: CircularWidget(
                            path: "assets/calendar.png",
                            padding: 12,
                            color: const Color(0xff319194),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CircularWidgetRow(
                      title: 'To Do',
                      color: Color(0xffe85e72),
                      subTitle: "5 tasks now, 1 started",
                      path: "assets/alarm.png",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const CircularWidgetRow(
                      title: 'In Progress',
                      color: Color(0xfff8be7f),
                      subTitle: "1 tasks now, 1 started",
                      path: "assets/progress.png",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const CircularWidgetRow(
                      title: 'Done',
                      color: Color(0xff6488e4),
                      subTitle: "18 tasks now, 13 started",
                      path: "assets/done.png",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Active Projects",
                      style: TextStyle(
                          color: Color(0xff0e1f3c),
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CircularProgressContainer(
                          valueNotifier: ValueNotifier(0),
                          percent: 15,
                          title: 'Medical App',
                          subTitle: '9 hours progress',
                          color: const Color(0xff309399),
                          backgroundColor: const Color(0xff409ea2),
                          subTitleColor: const Color(0xff5cacaf),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CircularProgressContainer(
                          valueNotifier: ValueNotifier(0),
                          percent: 60,
                          title: 'Making History Notes',
                          subTitle: '20 hours progress',
                          color: const Color(0xffe46471),
                          backgroundColor: const Color(0xffeb757e),
                          subTitleColor: const Color(0xfff4909b),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        CircularProgressContainer(
                          valueNotifier: ValueNotifier(0),
                          percent: 22,
                          title: 'Hindi Notes',
                          subTitle: '4 hours progress',
                          color: const Color(0xffe46471),
                          backgroundColor: const Color(0xffeb757e),
                          subTitleColor: const Color(0xfff4909b),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
