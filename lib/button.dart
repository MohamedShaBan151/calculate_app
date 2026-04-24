import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({
    super.key,
    required this.data,
    required this.color,
    required this.color2,
    required this.onTap,
  });
  final String data;
  final Color color;
  final Color color2;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: FilledButton(
        onPressed: () {
          onTap(data);
        },
        style: FilledButton.styleFrom(
          backgroundColor: color,
          foregroundColor: color2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          data,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
