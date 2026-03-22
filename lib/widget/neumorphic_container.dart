import 'package:ajit/configs/configs.dart';
import 'package:flutter/material.dart';

class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final double padding;
  final double? borderRadius;
  final bool isPressed;
  final Color? color;
  final double spread;
  final double blur;
  final Offset offset;
  final BoxConstraints? constraints;

  const NeumorphicContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.padding = 20,
    this.borderRadius = 20,
    this.isPressed = false,
    this.color,
    this.spread = 1.0,
    this.blur = 20.0,
    this.offset = const Offset(10, 10),
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = color ?? AppTheme.c!.background!;
    
    return Container(
      width: width,
      height: height,
      constraints: constraints,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(borderRadius!),
        boxShadow: isPressed
            ? [
                // Inner shadows for pressed state
                BoxShadow(
                  color: AppTheme.c!.shadow!.withOpacity(0.5),
                  offset: offset,
                  blurRadius: blur,
                  spreadRadius: -spread,
                ),
                BoxShadow(
                  color: AppTheme.c!.shadowSub!.withOpacity(0.9),
                  offset: -offset,
                  blurRadius: blur,
                  spreadRadius: -spread,
                ),
              ]
            : [
                // Outer shadows for normal state
                BoxShadow(
                  color: AppTheme.c!.shadow!,
                  offset: offset,
                  blurRadius: blur,
                  spreadRadius: spread,
                ),
                BoxShadow(
                  color: AppTheme.c!.shadowSub!,
                  offset: -offset,
                  blurRadius: blur,
                  spreadRadius: spread,
                ),
              ],
      ),
      child: child,
    );
  }
}
