import 'package:flutter/material.dart';

class displaywidget extends StatelessWidget {
  const displaywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFDA53D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                disp("22 C", "Avg House Temp"),
                disp("30 C", "Outside Temp"),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                disp("60 %", "Humidity"),
                disp("3", "Devices On"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget disp(String str1, String str2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          str1,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        Text(
          str2,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
