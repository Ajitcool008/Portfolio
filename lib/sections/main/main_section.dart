import 'package:ajit/animations/entrance_fader.dart';
import 'package:ajit/configs/app.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/provider/app_provider.dart';
import 'package:ajit/provider/drawer_provider.dart';
import 'package:ajit/provider/scroll_provider.dart';
import 'package:ajit/responsive/responsive.dart';
import 'package:ajit/utils/navbar_utils.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/widget/navbar_actions_button.dart';
import 'package:ajit/widget/navbar_logo.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:ajit/constants.dart';
import 'package:ajit/widget/arrow_on_top.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:ui';

part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';
part 'widgets/_body_background.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: Stack(
        children: [
          const _BodyBackground(),
          const _Body(),
          const ArrowOnTop(),
          Responsive.isTablet(context) || Responsive.isMobile(context)
              ? const _NavBarTablet()
              : const _NavbarDesktop(),
        ],
      ),
    );
  }
}
