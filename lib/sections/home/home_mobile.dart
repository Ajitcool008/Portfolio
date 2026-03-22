import 'package:ajit/configs/configs.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/constants.dart';
import 'package:ajit/widget/social_links.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: Space.h,
      color: AppTheme.c!.background,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Space.yf(8), // Padding for mobile header
            Center(
              child: NeumorphicContainer(
                padding: 0,
                borderRadius: 15,
                blur: 15,
                spread: 1,
                offset: const Offset(6, 6),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    StaticUtils.coloredPhoto,
                    fit: BoxFit.cover,
                    width: size.width * 0.9,
                    height: size.height * 0.35,
                  ),
                ),
              ).animate().fadeIn(duration: 800.ms).scale(),
            ),
            Space.y1!,
            Text(
              "WELCOME TO MY WORLD",
              style: AppText.l1!.copyWith(
                color: AppTheme.c!.primary,
                letterSpacing: 2,
                fontSize: AppDimensions.font(10),
                fontWeight: FontWeight.w600,
              ),
            ).animate().fadeIn(delay: 200.ms),
            Space.y1!,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Hi, I'm ",
                    style: AppText.h2!.copyWith(
                      color: AppTheme.c!.text,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  TextSpan(
                    text: "Ajit Sharma",
                    style: AppText.h2b!.copyWith(
                      color: AppTheme.c!.primary,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ).animate().fadeIn(delay: 400.ms),
            Space.y!,
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'Technical Lead.',
                  speed: const Duration(milliseconds: 60),
                  textStyle: AppText.h3b!.copyWith(
                    color: AppTheme.c!.text,
                    fontFamily: 'Montserrat',
                  ),
                ),
                TyperAnimatedText(
                  'Flutter Architect.',
                  speed: const Duration(milliseconds: 60),
                  textStyle: AppText.h3b!.copyWith(
                    color: AppTheme.c!.text,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
              repeatForever: true,
            ).animate().fadeIn(delay: 600.ms),
            Space.y2!,
            Text(
              "Architecting seamless digital experiences with a focus on performance and aesthetics.",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.textSub,
                height: 1.5,
              ),
            ).animate().fadeIn(delay: 800.ms),
            Space.y2!,
            Text(
              "FIND WITH ME",
              style: AppText.l2!.copyWith(
                color: AppTheme.c!.text,
                fontWeight: FontWeight.bold,
              ),
            ),
            Space.y1!,
            const SocialLinks().animate().fadeIn(delay: 1.seconds),
            Space.y2!,
          ],
        ),
      ),
    );
  }
}
