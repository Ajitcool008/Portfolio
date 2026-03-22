import 'package:ajit/configs/configs.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/constants.dart';
import 'package:ajit/widget/social_links.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      padding: Space.h,
      color: AppTheme.c!.background,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Space.yf(8), // Padding for navbar
            Text(
              "WELCOME TO MY WORLD",
              style: AppText.l1!.copyWith(
                color: AppTheme.c!.primary,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
              ),
            ).animate().fadeIn(),
            Space.y1!,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Hi, I'm ",
                    style: AppText.h1b!.copyWith(
                      fontSize: AppDimensions.normalize(20),
                      color: AppTheme.c!.text,
                    ),
                  ),
                  TextSpan(
                    text: "Ajit Sharma",
                    style: AppText.h1b!.copyWith(
                      fontSize: AppDimensions.normalize(20),
                      color: AppTheme.c!.primary,
                    ),
                  ),
                ],
              ),
            ).animate().fadeIn(delay: 200.ms),
            Space.y!,
            Row(
              children: [
                Text(
                  "a ",
                  style: AppText.h1b!.copyWith(
                    fontSize: AppDimensions.normalize(20),
                    color: AppTheme.c!.text,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Technical Lead.',
                      speed: const Duration(milliseconds: 60),
                      textStyle: AppText.h1b!.copyWith(
                        color: AppTheme.c!.text,
                        fontSize: AppDimensions.normalize(20),
                      ),
                    ),
                    TyperAnimatedText(
                      'Flutter Architect.',
                      speed: const Duration(milliseconds: 60),
                      textStyle: AppText.h1b!.copyWith(
                        color: AppTheme.c!.text,
                        fontSize: AppDimensions.normalize(20),
                      ),
                    ),
                  ],
                  repeatForever: true,
                ),
              ],
            ).animate().fadeIn(delay: 400.ms),
            Space.y2!,
            Center(
              child: NeumorphicContainer(
                padding: 0,
                borderRadius: 20,
                blur: 20,
                spread: 1,
                offset: const Offset(8, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    StaticUtils.coloredPhoto,
                    fit: BoxFit.cover,
                    width: size.width * 0.7,
                    height: size.height * 0.4,
                  ),
                ),
              ).animate().fadeIn(delay: 600.ms).scale(),
            ),
            Space.y2!,
            Text(
              "Architecting seamless digital experiences with a focus on performance, scalability, and cutting-edge aesthetics.",
              style: AppText.b1!.copyWith(
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
