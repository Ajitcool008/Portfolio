part of '../main_section.dart';

class _BodyBackground extends StatelessWidget {
  const _BodyBackground();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: AppTheme.c!.scaffold,
        ),
        // Subtle ambient light to enhance neumorphism
        Positioned(
          top: -100,
          left: -100,
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppTheme.c!.shadowSub!.withOpacity(0.4),
                  blurRadius: 100,
                  spreadRadius: 50,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -100,
          right: -100,
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppTheme.c!.shadow!.withOpacity(0.2),
                  blurRadius: 100,
                  spreadRadius: 50,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
