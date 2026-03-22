import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/constants.dart';
import 'package:ajit/provider/app_provider.dart';
import 'package:ajit/responsive/responsive.dart';
import 'package:ajit/utils/services_utils.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/widget/custom_text_heading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ajit/widget/glass_container.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:provider/provider.dart';

part 'services_desktop.dart';
part 'services_mobile.dart';

part 'widgets/_services_card.dart';
part 'widgets/_services_card_back.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
