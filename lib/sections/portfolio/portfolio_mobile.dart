import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/constants.dart';
import 'package:ajit/utils/project_utils.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/widget/project_card.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Text(
          'VISIT MY PORTFOLIO',
          textAlign: TextAlign.center,
          style: AppText.l1!.copyWith(
            color: AppTheme.c!.primary,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: AppDimensions.font(10),
          ),
        ).animate().fadeIn(),
        Space.y1!,
        Text(
          'My Portfolio',
          style: AppText.h2b!.copyWith(
            color: AppTheme.c!.text,
            fontFamily: 'Montserrat',
          ),
        ).animate().fadeIn(delay: 200.ms),
        const SizedBox(height: 30),
        CarouselSlider.builder(
          itemCount: ProjectUtils.titles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ProjectCard(
              banner: ProjectUtils.banners[i],
              projectLink: ProjectUtils.links[i],
              projectTitle: ProjectUtils.titles[i],
              projectDescription: ProjectUtils.description[i],
            ),
          ),
          options: CarouselOptions(
            height: AppDimensions.normalize(130),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: true,
          ),
        ),
        Space.y2!,
        InkWell(
          onTap: () => openURL(StaticUtils.gitHub),
          borderRadius: BorderRadius.circular(15),
          child: NeumorphicContainer(
            padding: 15,
            borderRadius: 15,
            spread: 1,
            blur: 10,
            offset: const Offset(4, 4),
            child: Text(
              'EXPLORE GITHUB',
              style: AppText.b2b!.copyWith(
                color: AppTheme.c!.primary,
                letterSpacing: 2,
              ),
            ),
          ),
        ).animate(onPlay: (c) => c.repeat(reverse: true))
          .shimmer(delay: 2.seconds, duration: 2.seconds),
        Space.yf(2),
      ],
    );
  }
}
