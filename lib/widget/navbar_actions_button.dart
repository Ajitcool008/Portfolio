import 'package:flutter/material.dart';
import 'package:ajit/animations/entrance_fader.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/provider/scroll_provider.dart';
import 'package:provider/provider.dart';

class NavBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    super.key,
    required this.label,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: Space.h!,
        child: TextButton(
          onPressed: () {
            scrollProvider.scroll(index);
          },
          style: TextButton.styleFrom(
            foregroundColor: AppTheme.c!.textSub,
          ).copyWith(
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.hovered)) return AppTheme.c!.primary!;
                return AppTheme.c!.textSub!;
              },
            ),
          ),
          child: Padding(
            padding: Space.all(0.5, 0.45),
            child: Text(
              label.toUpperCase(),
              style: AppText.l1!.copyWith(
                fontWeight: FontWeight.w500,
                letterSpacing: 1.2,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
