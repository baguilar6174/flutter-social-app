import 'package:flutter/material.dart';

import 'package:flutter_video_app/utils/utils.dart';

class CustomIconButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color color;

  const CustomIconButton({
    super.key,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon, color: color, size: 30),
        ),
        Text(FormatNumbers.readbleNumber(value.toDouble())),
      ],
    );
  }
}
