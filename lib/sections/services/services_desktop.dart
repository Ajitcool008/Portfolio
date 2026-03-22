part of 'services.dart';

class ServiceDesktop extends StatelessWidget {
  const ServiceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          Space.y2!,
          Text(
            'FEATURES',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fadeIn(),
          Space.y1!,
          Text(
            'What I Do',
            style: AppText.h1b!.copyWith(
              color: AppTheme.c!.text,
              fontSize: AppDimensions.normalize(25),
              fontFamily: 'Montserrat',
            ),
          ).animate().fadeIn(delay: 200.ms),
          Space.y1!,
          Wrap(
            spacing: width * 0.03,
            runSpacing: width * 0.03,
            alignment: WrapAlignment.center,
            children: ServicesUtils.servicesIcons
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(
                    serviceIcon: e.value,
                    serviceTitle: ServicesUtils.servicesTitles[e.key],
                    serviceDescription: ServicesUtils.servicesDescription[e.key],
                  ),
                )
                .toList(),
          ),
          Space.y2!,
        ],
      ),
    );
  }
}
