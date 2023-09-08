import 'package:flutter/material.dart';
import 'package:flutter_ui_project2/widgets/display_widget.dart';

import 'widgets/card.dart';
import 'widgets/recent.dart';
import 'widgets/routines.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          end: Alignment.topLeft,
          begin: Alignment.bottomRight,
          colors: [Colors.black, Color.fromARGB(255, 79, 79, 79)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "My House",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffFDA53D),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const displaywidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Room",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffFDA53D),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      card(str: "Master Bedroom"),
                      SizedBox(
                        width: 20,
                      ),
                      card(str: "Bedroom"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      card(str: "Kids Room"),
                      SizedBox(
                        width: 20,
                      ),
                      card(str: "Drawing Room"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Routines",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffFDA53D),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) => const routines()),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Recently Used Devices",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffFDA53D),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                      color: const Color(0xffFDA53D),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(10, (index) => const recently_used()),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
