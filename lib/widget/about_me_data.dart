import 'package:flutter/material.dart';
import 'package:ajit/configs/configs.dart';

class AboutMeData extends StatelessWidget {
  final String data;
  final String information;
  final Alignment? alignment;

  const AboutMeData({
    super.key,
    required this.data,
    required this.information,
    this.alignment,
  });
  
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$data: ",
              style: AppText.l1b!.copyWith(
                color: AppTheme.c!.text,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: " $information\n",
              style: AppText.l1!.copyWith(
                color: AppTheme.c!.textSub,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
