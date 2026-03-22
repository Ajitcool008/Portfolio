import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/constants.dart';
import 'package:ajit/utils/project_utils.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/widget/project_card.dart';
import 'package:ajit/widget/neumorphic_container.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({super.key});

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h!,
      child: Column(
        children: [
          Space.y2!,
          Text(
            'VISIT MY PORTFOLIO AND KEEP YOUR FEEDBACK',
            textAlign: TextAlign.center,
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fadeIn(),
          Space.y1!,
          Text(
            'My Portfolio',
            style: AppText.h1b!.copyWith(
              color: AppTheme.c!.text,
              fontSize: AppDimensions.normalize(25),
              fontFamily: 'Montserrat',
            ),
          ).animate().fadeIn(delay: 200.ms),
          Space.y1!,
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: AppDimensions.normalize(15),
            runSpacing: AppDimensions.normalize(15),
            children: ProjectUtils.banners
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(
                    banner: e.value,
                    projectLink: ProjectUtils.links[e.key],
                    projectTitle: ProjectUtils.titles[e.key],
                    projectDescription: ProjectUtils.description[e.key],
                  ),
                )
                .toList(),
          ),
          Space.y2!,
          // View More / Github button in neumorphic style
          InkWell(
            onTap: () => openURL(StaticUtils.gitHub),
            borderRadius: BorderRadius.circular(15),
            child: NeumorphicContainer(
              padding: 22,
              borderRadius: 15,
              spread: 1,
              blur: 15,
              offset: const Offset(6, 6),
              child: Text(
                'EXPLORE GITHUB',
                style: AppText.b1b!.copyWith(
                  color: AppTheme.c!.primary,
                  letterSpacing: 2,
                ),
              ),
            ),
          ).animate(onPlay: (c) => c.repeat(reverse: true))
            .shimmer(delay: 2.seconds, duration: 2.seconds),
          Space.y2!,
        ],
      ),
    );
  }
}
