import 'package:flutter/material.dart';

import '../model/Attendance_Model.dart';

class StudentAttendList extends StatelessWidget {
  String rollNo;
  String name;
  bool? isPresent;
  bool? isAll;
  void Function(bool?)? onChanged;
  StudentAttendList(
      {super.key,
      required this.rollNo,
      required this.name,
      this.isPresent = false,
      this.isAll,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.7),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                rollNo,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Checkbox(
                activeColor: Colors.black,
                value: isAll ?? isPresent,
                onChanged: onChanged,
              )
            ],
          ),
        ),
      ),
    );
  }
}
