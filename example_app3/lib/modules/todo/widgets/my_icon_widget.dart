import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final Null Function() onTap;
  const MyIcon({
    super.key,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: isActive ? Colors.green : Colors.grey,
        ),
      ),
    );
  }
}
