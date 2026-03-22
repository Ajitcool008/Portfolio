import 'package:ajit/widget/neumorphic_container.dart';
import 'package:flutter/material.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/constants.dart';
import 'package:ajit/responsive/responsive.dart';
import 'package:ajit/utils/utils.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppDimensions.normalize(10),
      runSpacing: AppDimensions.normalize(10),
      alignment: WrapAlignment.start,
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map<Widget>(
            (e) => InkWell(
              onTap: () => openURL(StaticUtils.socialLinks[e.key]),
              borderRadius: BorderRadius.circular(15),
              child: NeumorphicContainer(
                padding: 12,
                borderRadius: 12,
                spread: 1.5,
                blur: 15,
                offset: const Offset(6, 6),
                child: Image.network(
                  e.value,
                  color: AppTheme.c!.text,
                  height: AppDimensions.normalize(12),
                  width: AppDimensions.normalize(12),
                ),
              ),
            ).animate(onPlay: (c) => c.repeat(reverse: true))
              .shimmer(delay: (e.key * 200).ms, duration: 3.seconds, color: AppTheme.c!.primary!.withOpacity(0.1))
              .fadeIn(delay: (e.key * 100).ms)
              .scale(begin: const Offset(0.95, 0.95)),
          )
          .toList(),
    );
  }
}
