import 'package:flutter/material.dart';
import 'package:web/Desktop/dHome.dart';
import 'package:web/Mobile/mHome.dart';
import 'package:web/Tablet/tHome.dart';
import 'package:web/responsive.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MobileHome(),
        tablet: TabletHome(),
        desktop: DesktopHome(),
      ),
    );
  }
}
