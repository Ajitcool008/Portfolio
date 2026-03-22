import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/widget/neumorphic_container.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
      padding: 8,
      borderRadius: 50,
      blur: 10,
      spread: 1,
      offset: const Offset(4, 4),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppTheme.c!.primary!.withOpacity(0.2),
            width: 2,
          ),
        ),
        child: CircleAvatar(
          radius: 18,
          backgroundColor: AppTheme.c!.background,
          child: Text(
            "A",
            style: AppText.h3b!.copyWith(
              color: AppTheme.c!.primary,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
      ),
    ).animate().fadeIn(duration: 800.ms).scale(begin: const Offset(0.9, 0.9));
  }
}
