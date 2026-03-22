import 'package:ajit/configs/configs.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/constants.dart';
import 'package:ajit/widget/social_links.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      constraints: BoxConstraints(minHeight: size.height),
      padding: Space.h,
      color: AppTheme.c!.background,
      child: Center(
        child: Container(
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.normalize(30)),
          child: Row(
            children: [
              // Left Content
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WELCOME TO MY WORLD",
                      style: AppText.l1!.copyWith(
                        color: AppTheme.c!.primary,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w600,
                      ),
                    ).animate().fadeIn(duration: 800.ms).slideX(begin: -0.1),
                    Space.y1!,
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Hi, I'm ",
                            style: AppText.h1b!.copyWith(
                              fontSize: AppDimensions.normalize(30),
                              color: AppTheme.c!.text,
                            ),
                          ),
                          TextSpan(
                            text: "Ajit Sharma",
                            style: AppText.h1b!.copyWith(
                              fontSize: AppDimensions.normalize(30),
                              color: AppTheme.c!.primary,
                            ),
                          ),
                        ],
                      ),
                    ).animate().fadeIn(delay: 200.ms).slideX(begin: -0.05),
                    Space.y!,
                    Wrap(
                      children: [
                        Text(
                          "a ",
                          style: AppText.h1b!.copyWith(
                            fontSize: AppDimensions.normalize(30),
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
                                fontSize: AppDimensions.normalize(30),
                              ),
                            ),
                            TyperAnimatedText(
                              'AI Specialist.',
                              speed: const Duration(milliseconds: 60),
                              textStyle: AppText.h1b!.copyWith(
                                color: AppTheme.c!.text,
                                fontSize: AppDimensions.normalize(30),
                              ),
                            ),
                            TyperAnimatedText(
                              'Prompt Engineer.',
                              speed: const Duration(milliseconds: 60),
                              textStyle: AppText.h1b!.copyWith(
                                color: AppTheme.c!.text,
                                fontSize: AppDimensions.normalize(30),
                              ),
                            ),
                            TyperAnimatedText(
                              'Flutter Architect.',
                              speed: const Duration(milliseconds: 60),
                              textStyle: AppText.h1b!.copyWith(
                                color: AppTheme.c!.text,
                                fontSize: AppDimensions.normalize(30),
                              ),
                            ),
                            TyperAnimatedText(
                              'Innovation Lead.',
                              speed: const Duration(milliseconds: 60),
                              textStyle: AppText.h1b!.copyWith(
                                color: AppTheme.c!.text,
                                fontSize: AppDimensions.normalize(30),
                              ),
                            ),
                          ],
                          repeatForever: true,
                        ),
                      ],
                    ).animate().fadeIn(delay: 400.ms),
                    Space.y2!,
                    SizedBox(
                      width: size.width * 0.4,
                      child: Text(
                        "Architecting seamless digital experiences with a focus on performance, scalability, and cutting-edge aesthetics. I specialize in building high-performance cross-platform applications that push the boundaries of what's possible.",
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.textSub,
                          height: 1.6,
                        ),
                      ),
                    ).animate().fadeIn(delay: 600.ms),
                    Space.y2!,
                    
                    // Social and Skills Row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "FIND WITH ME",
                              style: AppText.l2!.copyWith(
                                color: AppTheme.c!.text,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            Space.y1!,
                            const SocialLinks(),
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ).animate().fadeIn(delay: 800.ms),
                  ],
                ),
              ),
              
              // Right Image
              Expanded(
                flex: 4,
                child: Center(
                  child: NeumorphicContainer(
                    padding: 0,
                    borderRadius: 30,
                    blur: 30,
                    spread: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppTheme.c!.background!,
                            AppTheme.c!.shadowSub!.withOpacity(0.5),
                          ],
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          StaticUtils.coloredPhoto,
                          fit: BoxFit.cover,
                          height: size.height * 0.6,
                        ),
                      ),
                    ),
                  ).animate().fadeIn(duration: 1.seconds).scale(begin: const Offset(0.9, 0.9)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
