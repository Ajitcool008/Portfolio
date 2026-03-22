import 'package:ajit/configs/configs.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({
    super.key,
    required this.techName,
  });

  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
      padding: 12,
      borderRadius: 10,
      blur: 10,
      spread: 1,
      offset: const Offset(4, 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.c!.primary,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            techName,
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.text,
              fontWeight: FontWeight.w600,
              fontSize: AppDimensions.font(12),
              fontFamily: 'Montserrat',
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms).scale(begin: const Offset(0.9, 0.9));
  }
}
