import 'package:flutter/material.dart';

class InPutLabel extends StatelessWidget {
  const InPutLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: Colors.black54, fontWeight: FontWeight.w400, fontSize: 14),
    );
  }
}
