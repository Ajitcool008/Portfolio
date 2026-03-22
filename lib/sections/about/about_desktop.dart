import 'package:ajit/configs/configs.dart';
import 'package:ajit/utils/about_utils.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/widget/about_me_data.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:ajit/widget/tech_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:universal_html/html.dart' as html;
import 'package:ajit/constants.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      color: AppTheme.c!.background,
      child: Column(
        children: [
          Space.y2!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left Image
              Expanded(
                child: Center(
                  child: NeumorphicContainer(
                    padding: 0,
                    borderRadius: 30,
                    blur: 30,
                    spread: 2,
                    offset: const Offset(10, 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        StaticUtils.coloredPhoto,
                        height: height * 0.6,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ).animate().fadeIn(duration: 1.seconds).scale(),
                ),
              ),
              const SizedBox(width: 60),
              // Right Content
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WHO AM I?',
                      style: AppText.l1!.copyWith(
                        color: AppTheme.c!.primary,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ).animate().fadeIn(),
                    Space.y1!,
                    Text(
                      'About Me',
                      style: AppText.h1b!.copyWith(
                        color: AppTheme.c!.text,
                        fontSize: AppDimensions.normalize(25),
                        fontFamily: 'Montserrat',
                      ),
                    ).animate().fadeIn(delay: 200.ms),
                    Space.y2!,
                    Text(
                      AboutUtils.aboutMeDetail,
                      style: AppText.b1!.copyWith(
                        height: 1.8,
                        color: AppTheme.c!.textSub,
                        fontFamily: 'Montserrat',
                      ),
                    ).animate().fadeIn(delay: 400.ms),
                    Space.y2!,
                    const Divider(color: Colors.black12),
                    Space.y1!,
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AboutMeData(data: "NAME", information: "Ajit Sharma"),
                            AboutMeData(data: "EMAIL", information: "ajit.sharma@outlook.com"),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AboutMeData(data: "LOCATION", information: "London, UK"),
                            AboutMeData(data: "STATUS", information: "Available"),
                          ],
                        ),
                      ],
                    ).animate().fadeIn(delay: 600.ms),
                    Space.y2!,
                    Text(
                      'MY SKILLS:',
                      style: AppText.l2!.copyWith(
                        color: AppTheme.c!.text,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    Space.y1!,
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: kTools
                          .map((e) => ToolTechWidget(
                                techName: e,
                              ))
                          .toList(),
                    ).animate().fadeIn(delay: 800.ms),
                    Space.y2!,
                    // RESUME Button in Neumorphic style
                    InkWell(
                      onTap: () => openURL(StaticUtils.resume),
                      borderRadius: BorderRadius.circular(15),
                      child: NeumorphicContainer(
                        padding: 18,
                        borderRadius: 15,
                        spread: 1,
                        blur: 15,
                        offset: const Offset(6, 6),
                        child: Text(
                          'DOWNLOAD RESUME',
                          style: AppText.b1b!.copyWith(
                            color: AppTheme.c!.primary,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ).animate().fadeIn(delay: 1.seconds),
                  ],
                ),
              ),
            ],
          ),
          Space.y2!,
        ],
      ),
    );
  }
}
