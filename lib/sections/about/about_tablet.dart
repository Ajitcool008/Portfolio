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

class AboutTablet extends StatelessWidget {
  const AboutTablet({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50,
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
                  letterSpacing: 4,
                  fontWeight: FontWeight.w900,
                ),
              ).animate().fadeIn(delay: 200.ms),
            ],
          ),
          Space.y2!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height * 0.3,
                        width: height * 0.3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppTheme.c!.primary!.withOpacity(0.15),
                              blurRadius: 80,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                      ).animate(onPlay: (c) => c.repeat(reverse: true)).scale(duration: 4.seconds, begin: const Offset(0.9, 0.9), end: const Offset(1.1, 1.1)),
                      ClipOval(
                        child: Image.asset(
                          StaticUtils.coloredPhoto,
                          height: height * 0.35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GlassContainer(
                  padding: Space.all(3, 4),
                  borderRadius: BorderRadius.circular(30),
                  blur: 30,
                  opacity: 0.05,
                  border: Border.all(color: Colors.white.withOpacity(0.1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AboutUtils.aboutMeHeadline,
                        style: AppText.h3b!.copyWith(color: AppTheme.c!.primary, fontSize: AppDimensions.font(18)),
                      ),
                      Space.y1!,
                      Text(
                        AboutUtils.aboutMeDetail,
                        style: AppText.b1!.copyWith(height: 1.8, color: Colors.white70, fontSize: AppDimensions.font(14)),
                        textAlign: TextAlign.justify,
                      ),
                      Space.y2!,
                      Text(
                        "MY SKILLS:",
                        style: AppText.l2!.copyWith(color: AppTheme.c!.primary, letterSpacing: 2, fontWeight: FontWeight.bold),
                      ),
                      Space.y1!,
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: kTools.map((e) => ToolTechWidget(techName: e)).toList(),
                      ),
                      Space.y2!,
                      const Divider(color: Colors.white10),
                      Space.y1!,
                      const Row(
                        children: [
                          Expanded(child: AboutMeData(data: "EMAIL", information: "ajit.sharma@outlook.com")),
                          Expanded(child: AboutMeData(data: "LOCATION", information: "London, UK")),
                        ],
                      ),
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
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text("VIEW RESUME"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ).animate().fadeIn(delay: 300.ms).slideY(begin: 0.05),
        ],
      ),
    );
  }
}
