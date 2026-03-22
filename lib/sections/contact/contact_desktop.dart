import 'package:ajit/widget/social_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ajit/configs/configs.dart';
import 'package:ajit/utils/utils.dart';
import 'package:ajit/widget/neumorphic_container.dart';
import 'package:ajit/constants.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: Space.all(1, 40),
      color: AppTheme.c!.background,
      child: Column(
        children: [
          Space.y2!,
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
            style: AppText.h1b!.copyWith(
              color: AppTheme.c!.text,
              fontSize: AppDimensions.normalize(25),
              fontFamily: 'Montserrat',
            ),
          ).animate().fadeIn(delay: 200.ms),
          Space.y1!,
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left: Contact Info
              Expanded(
                flex: 4,
                child: NeumorphicContainer(
                  padding: 30,
                  borderRadius: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          StaticUtils.coloredPhoto,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Space.y2!,
                      Text(
                        "Ajit Sharma",
                        style: AppText.h2b!.copyWith(
                          color: AppTheme.c!.text,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Text(
                        "Technical Lead",
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.textSub,
                        ),
                      ),
                      Space.y2!,
                      Text(
                        "I am available for freelance work. Connect with me via and call in to my account.",
                        style: AppText.b2!.copyWith(
                          color: AppTheme.c!.textSub,
                          height: 1.5,
                        ),
                      ),
                      Space.y2!,
                      _ContactInfoRow(label: "Phone", value: "+44 7741398352"),
                      _ContactInfoRow(label: "Email", value: "ajit.sharma@outlook.com"),
                      Space.y2!,
                      Text(
                        "FIND WITH ME",
                        style: AppText.l2!.copyWith(
                          color: AppTheme.c!.text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Space.y1!,
                      const SocialLinks(),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 40),
              // Right: Contact Form
              Expanded(
                flex: 6,
                child: NeumorphicContainer(
                  padding: 35,
                  borderRadius: 20,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: _NeumorphicTextField(label: "YOUR NAME")),
                          const SizedBox(width: 25),
                          Expanded(child: _NeumorphicTextField(label: "PHONE NUMBER")),
                        ],
                      ),
                      Space.y2!,
                      _NeumorphicTextField(label: "EMAIL"),
                      Space.y2!,
                      _NeumorphicTextField(label: "SUBJECT"),
                      Space.y2!,
                      _NeumorphicTextField(label: "YOUR MESSAGE", maxLines: 6),
                      Space.y1!,
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: NeumorphicContainer(
                          width: double.infinity,
                          padding: 18,
                          borderRadius: 10,
                          child: Center(
                            child: Text(
                              "SEND MESSAGE",
                              style: AppText.b1b!.copyWith(
                                color: AppTheme.c!.primary,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ).animate().fadeIn(delay: 400.ms),
          Space.y2!,
        ],
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
      padding: const EdgeInsets.symmetric(vertical: 5),
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
          ),
        ),
        const SizedBox(height: 10),
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
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              hintStyle: TextStyle(color: AppTheme.c!.textSub!.withOpacity(0.5)),
            ),
            style: TextStyle(color: AppTheme.c!.text),
          ),
        ),
      ],
    );
  }
}
