import 'package:flutter/material.dart';

class routines extends StatelessWidget {
  const routines({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(10),
      color: Color(0xffFDA53D),
      elevation: 4,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.wb_sunny_outlined, size: 50, color: Colors.black),
              Text(
                "Morning",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
