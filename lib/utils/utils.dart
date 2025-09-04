import 'package:ajit/sections/about/about.dart';
import 'package:ajit/sections/contact/contact.dart';
import 'package:ajit/sections/home/home.dart';
import 'package:ajit/sections/portfolio/portfolio.dart';
import 'package:ajit/sections/services/services.dart';
import 'package:ajit/widget/footer.dart';
import 'package:flutter/material.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';
  static const String logo1024 = 'assets/app/1024.png';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Stack_Overflow_icon.svg/2048px-Stack_Overflow_icon.svg.png"
  ];

  static const List<String> socialLinks = [
    "https://www.linkedin.com/in/ajit-sharma-a0883a72/",
    "https://github.com/Ajitcool008",
    "https://stackoverflow.com/users/14265089/ajit-sharma"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1kywvng_K5vCr6K2dmhU5yizG_TeLP1Gr/view?usp=sharing';

  static const String gitHub = 'https://github.com/Ajitcool008';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
