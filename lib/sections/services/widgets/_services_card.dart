part of '../services.dart';

class _ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;

  const _ServiceCard({
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
  });

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (val) => setState(() => isHover = val),
      child: NeumorphicContainer(
        width: AppDimensions.normalize(100),
        constraints: BoxConstraints(
          minHeight: AppDimensions.normalize(180),
        ),
        padding: 30,
        borderRadius: 30,
        blur: 20,
        spread: 1,
        color: isHover ? null : AppTheme.c!.background,
        child: AnimatedContainer(
          duration: 300.ms,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: isHover
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppTheme.c!.primary!,
                      const Color(0xffd11414),
                    ],
                  )
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.serviceIcon,
                height: AppDimensions.normalize(35),
                color: isHover ? Colors.white : AppTheme.c!.primary,
              ),
              Space.y2!,
              Text(
                widget.serviceTitle,
                style: AppText.h3b!.copyWith(
                  color: isHover ? Colors.white : AppTheme.c!.text,
                  fontFamily: 'Montserrat',
                ),
              ),
              Space.y1!,
              Text(
                widget.serviceDescription,
                style: AppText.b2!.copyWith(
                  color: isHover ? Colors.white.withOpacity(0.8) : AppTheme.c!.textSub,
                  height: 1.5,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              Icon(
                Icons.arrow_forward_rounded,
                color: isHover ? Colors.white : AppTheme.c!.primary,
                size: 30,
              ).animate(target: isHover ? 1 : 0).moveX(begin: -10, end: 0).fadeIn(),
            ],
          ),
        ),
      ).animate().fadeIn(duration: 500.ms).scale(begin: const Offset(0.98, 0.98)),
    );
  }
}
