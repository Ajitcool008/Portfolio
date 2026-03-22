import 'package:ajit/constants.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/utils/about_utils.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/widget/about_me_data.dart';
import 'package:ajit/widget/glass_container.dart';
import 'package:ajit/widget/tech_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:universal_html/html.dart' as html;

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [AppTheme.c!.primary!, AppTheme.c!.accent!],
                  ),
                ),
              ).animate().scaleX(begin: 0, duration: 800.ms),
              Space.x1!,
              Text(
                "ABOUT ME",
                style: AppText.h2b!.copyWith(
                  color: Colors.white,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w900,
                ),
              ).animate().fadeIn(delay: 200.ms),
            ],
          ),
          Space.y2!,
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: height * 0.22,
                  width: height * 0.22,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.c!.primary!.withOpacity(0.15),
                        blurRadius: 60,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                ).animate(onPlay: (c) => c.repeat(reverse: true)).scale(duration: 4.seconds, begin: const Offset(0.9, 0.9), end: const Offset(1.1, 1.1)),
                ClipOval(
                  child: Image.asset(
                    StaticUtils.coloredPhoto,
                    height: height * 0.25,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ).animate().fadeIn().scale(),
          Space.y2!,
          GlassContainer(
            padding: Space.all(2, 3),
            borderRadius: BorderRadius.circular(25),
            blur: 25,
            opacity: 0.05,
            border: Border.all(color: Colors.white.withOpacity(0.1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AboutUtils.aboutMeHeadline,
                  style: AppText.b1b!.copyWith(color: AppTheme.c!.primary, fontSize: AppDimensions.font(16)),
                ),
                Space.y1!,
                Text(
                  AboutUtils.aboutMeDetail,
                  style: AppText.b2!.copyWith(height: 1.7, color: Colors.white70, fontSize: AppDimensions.font(14)),
                  textAlign: TextAlign.justify,
                ),
                Space.y2!,
                Text(
                  "MY TECH STACK:",
                  style: AppText.l2!.copyWith(color: AppTheme.c!.primary, letterSpacing: 2, fontWeight: FontWeight.bold),
                ),
                Space.y1!,
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: kTools.map((e) => ToolTechWidget(techName: e)).toList(),
                ),
                Space.y2!,
                const Divider(color: Colors.white10),
                Space.y1!,
                const AboutMeData(data: "EMAIL", information: "ajit.sharma@outlook.com"),
                const AboutMeData(data: "LOCATION", information: "London, UK"),
                Space.y2!,
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.c!.primary!.withOpacity(0.2),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => html.window.open(StaticUtils.resume, 'pdf'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.c!.primary,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text("DOWNLOAD CV"),
                  ),
                ),
              ],
            ),
          ).animate().fadeIn(delay: 400.ms).slideY(begin: 0.1),
        ],
      ),
    );
  }
}
