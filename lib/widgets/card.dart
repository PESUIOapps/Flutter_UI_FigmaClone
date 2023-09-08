import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final String str;
  const card({Key? key, required this.str}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFDA53D),
      elevation: 4,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            str,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
