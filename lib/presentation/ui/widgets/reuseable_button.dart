import 'package:flutter/material.dart';

class ReButton extends StatefulWidget {
    const ReButton({super.key, required this.text, required this.width, required this.height, required this.onTap});

  final String text;

  final double width;

  final  double height;

final VoidCallback onTap;

  @override
  State<ReButton> createState() => _ReButtonState();
}

class _ReButtonState extends State<ReButton> {



  @override
  Widget build(BuildContext context) {
     return Container();
  }
}
