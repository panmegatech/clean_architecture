import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String data;
  final double? size;
  final FontWeight? fontWeight;

  const CustomText(this.data,
      {super.key, this.size, this.fontWeight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size ?? 20,
        fontWeight: fontWeight,
      ),
    );
  }
}
