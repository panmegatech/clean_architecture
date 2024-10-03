import 'package:flutter/material.dart';

class CustomCenter extends StatelessWidget {
  final Widget child;

  const CustomCenter({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(
        child: child,
      ),
    );
  }
}
