import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class HomeIconBox extends StatelessWidget {
  IconData icon;
  String label;
  void Function()? onTap;

  HomeIconBox({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 65,
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Kcolor.black.withOpacity(.3)),
                borderRadius: BorderRadius.circular(10),
                color: Kcolor.white),
            child: Icon(
              icon,
              size: 43,
            ),
          ),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
