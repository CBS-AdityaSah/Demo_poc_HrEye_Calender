import 'package:flutter/material.dart';
class CustomBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color borderColor;

  const CustomBadge({
    required this.icon,
    required this.size,
    required this.borderColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Icon(
        icon,
        size: size * 0.6, // Scale icon size to fit within the badge
        color: Colors.black,
      ),
    );
  }
}