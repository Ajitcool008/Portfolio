part of 'services.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const SizedBox(height: 40),
          Text(
            'FEATURES',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: AppDimensions.font(10),
            ),
          ).animate().fadeIn(),
          Space.y1!,
          Text(
            'What I Do',
            textAlign: TextAlign.center,
            style: AppText.h2b!.copyWith(
              color: AppTheme.c!.text,
              fontFamily: 'Montserrat',
            ),
          ).animate().fadeIn(delay: 200.ms),
          const SizedBox(height: 30),
          CarouselSlider.builder(
            itemCount: ServicesUtils.servicesTitles.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: _ServiceCard(
                serviceIcon: ServicesUtils.servicesIcons[i],
                serviceTitle: ServicesUtils.servicesTitles[i],
                serviceDescription: ServicesUtils.servicesDescription[i],
              ),
            ),
            options: CarouselOptions(
              viewportFraction: 0.8,
              height: AppDimensions.normalize(200),
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: true,
            ),
          ),
          Space.yf(2),
        ],
      ),
    );
  }
}
