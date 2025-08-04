import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  final String label;
  final IconData icon;

  const MealItemTrait({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 17,
        color: Colors.white,
      ),
      SizedBox(
        width: 6,
      ),
      Text(
        label,
        style: TextStyle(color: Colors.white),
      )
    ]);
  }
}
