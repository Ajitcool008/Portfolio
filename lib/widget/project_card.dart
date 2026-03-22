import 'package:ajit/widget/neumorphic_container.dart';
import 'package:flutter/material.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/constants.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProjectCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;

  const ProjectCard({
    super.key,
    this.banner,
    this.projectIcon,
    this.projectLink,
    required this.projectTitle,
    required this.projectDescription,
  });

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.projectLink == null ? () {} : () => openURL(widget.projectLink!),
      onHover: (val) => setState(() => isHover = val),
      child: NeumorphicContainer(
        width: AppDimensions.normalize(150),
        height: AppDimensions.normalize(150),
        padding: 25,
        borderRadius: 20,
        blur: 20,
        spread: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with hover zoom
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      if (widget.banner != null)
                        Image.asset(
                          widget.banner!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ).animate(target: isHover ? 1 : 0).scale(
                          begin: const Offset(1, 1),
                          end: const Offset(1.1, 1.1),
                          duration: 400.ms,
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Space.y1!,
            // Category (Hardcoded or pulled from title if available, usually project type)
            Text(
              "DESIGN / APPLICATION",
              style: AppText.l2!.copyWith(
                color: AppTheme.c!.primary,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Space.y!,
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.projectTitle,
                    style: AppText.h3b!.copyWith(
                      color: isHover ? AppTheme.c!.primary : AppTheme.c!.text,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_outward_rounded,
                  color: isHover ? AppTheme.c!.primary : AppTheme.c!.text,
                  size: 20,
                ).animate(target: isHover ? 1 : 0).move(begin: const Offset(-5, 5), end: const Offset(0, 0)),
              ],
            ),
          ],
        ),
      ),
    ).animate().fadeIn(duration: 500.ms).scale(begin: const Offset(0.98, 0.98));
  }
}
