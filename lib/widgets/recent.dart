import 'package:flutter/material.dart';

class recently_used extends StatelessWidget {
  const recently_used({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(5),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xffC3761F),
        child: Icon(Icons.ac_unit_rounded, size: 30, color: Colors.black),
      ),
    );
  }
}
