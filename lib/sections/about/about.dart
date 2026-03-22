import 'package:flutter/material.dart';
import 'package:ajit/responsive/responsive.dart';
import 'package:ajit/sections/about/about_desktop.dart';
import 'package:ajit/sections/about/about_mobile.dart';
import 'package:ajit/sections/about/about_tablet.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutTablet(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
