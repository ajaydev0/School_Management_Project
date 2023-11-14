import 'package:flutter/material.dart';

class StudentDetails extends StatelessWidget {
  String title;
  String descript;
  IconData icon;
  StudentDetails({
    super.key,
    required this.title,
    required this.descript,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              const SizedBox(width: 10),
              Text(title),
            ],
          ),
          Text(descript),
        ],
      ),
    );
  }
}
