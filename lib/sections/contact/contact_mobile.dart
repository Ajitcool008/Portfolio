import 'package:ajit/widget/social_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:ajit/constants.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 20),
      color: AppTheme.c!.background,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Space.yf(4),
            Text(
              'CONTACT',
              style: AppText.l1!.copyWith(
                color: AppTheme.c!.primary,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(),
            Space.y1!,
            Text(
              'Contact With Me',
              style: AppText.h2b!.copyWith(
                color: AppTheme.c!.text,
                fontFamily: 'Montserrat',
              ),
            ).animate().fadeIn(delay: 200.ms),
            Space.yf(2),
            
            // Contact Info Card
            NeumorphicContainer(
              padding: 20,
              borderRadius: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      StaticUtils.coloredPhoto,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Space.y2!,
                  Text(
                    "Ajit Sharma",
                    style: AppText.h3b!.copyWith(
                      color: AppTheme.c!.text,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    "Technical Lead",
                    style: AppText.b2!.copyWith(
                      color: AppTheme.c!.textSub,
                    ),
                  ),
                  Space.y1!,
                  Text(
                    "I am available for freelance work. Connect with me.",
                    style: AppText.b2!.copyWith(
                      color: AppTheme.c!.textSub,
                      height: 1.5,
                    ),
                  ),
                  Space.y2!,
                  _ContactInfoRow(label: "Phone", value: "+44 7741398352"),
                  _ContactInfoRow(label: "Email", value: "ajit.sharma@outlook.com"),
                  Space.y2!,
                  const SocialLinks(),
                ],
              ),
            ).animate().fadeIn(delay: 400.ms),
            
            Space.y1!,
            
            // Contact Form
            NeumorphicContainer(
              padding: 20,
              borderRadius: 20,
              child: Column(
                children: [
                  _NeumorphicTextField(label: "YOUR NAME"),
                  Space.y2!,
                  _NeumorphicTextField(label: "PHONE NUMBER"),
                  Space.y2!,
                  _NeumorphicTextField(label: "EMAIL"),
                  Space.y2!,
                  _NeumorphicTextField(label: "SUBJECT"),
                  Space.y2!,
                  _NeumorphicTextField(label: "YOUR MESSAGE", maxLines: 4),
                  Space.y1!,
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: NeumorphicContainer(
                      width: double.infinity,
                      padding: 15,
                      borderRadius: 10,
                      child: Center(
                        child: Text(
                          "SEND MESSAGE",
                          style: AppText.b2b!.copyWith(
                            color: AppTheme.c!.primary,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ).animate().fadeIn(delay: 600.ms),
            Space.yf(4),
          ],
        ),
      ),
    );
  }
}

class _ContactInfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _ContactInfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$label: ",
              style: AppText.b2!.copyWith(color: AppTheme.c!.textSub),
            ),
            TextSpan(
              text: value,
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.text,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NeumorphicTextField extends StatelessWidget {
  final String label;
  final int maxLines;
  const _NeumorphicTextField({required this.label, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppText.l2!.copyWith(
            color: AppTheme.c!.textSub,
            letterSpacing: 1,
            fontWeight: FontWeight.w600,
            fontSize: 10,
          ),
        ),
        const SizedBox(height: 8),
        NeumorphicContainer(
          padding: 0,
          borderRadius: 10,
          isPressed: true,
          blur: 5,
          spread: 1,
          offset: const Offset(3, 3),
          child: TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            ),
            style: TextStyle(color: AppTheme.c!.text, fontSize: 13),
          ),
        ),
      ],
    );
  }
}
