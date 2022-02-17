import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final mobile;
  final tablet;
  final desktop;

  const Responsive({Key? key, this.mobile, this.tablet, this.desktop})
      : super(key: key);

  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 450) {
          return mobile;
        } else if (constraints.maxWidth > 450 && constraints.maxHeight <= 800) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
