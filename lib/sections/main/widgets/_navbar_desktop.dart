part of '../main_section.dart';

class _NavbarDesktop extends StatelessWidget {
  const _NavbarDesktop();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.normalize(30),
        vertical: AppDimensions.normalize(15),
      ),
      child: NeumorphicContainer(
        padding: 0,
        borderRadius: 50,
        blur: 15,
        spread: 1,
        offset: const Offset(5, 5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: [
              const NavBarLogo(),
              const Spacer(),
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => NavBarActionButton(
                      label: e.value,
                      index: e.key,
                    ),
                  ),
              const SizedBox(width: 20),
              // Neumorphic Resume Button
              InkWell(
                onTap: () => html.window.open(StaticUtils.resume, "pdf"),
                borderRadius: BorderRadius.circular(10),
                child: NeumorphicContainer(
                  padding: 12,
                  borderRadius: 10,
                  spread: 1,
                  blur: 10,
                  offset: const Offset(4, 4),
                  child: Text(
                    'RESUME',
                    style: AppText.l1b!.copyWith(
                      color: AppTheme.c!.primary,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ).animate().fadeIn(delay: 400.ms).scale(),
            ],
          ),
        ),
      ),
    ).animate().slideY(begin: -1, duration: 800.ms, curve: Curves.easeOut);
  }
}

class _NavBarTablet extends StatelessWidget {
  const _NavBarTablet();

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: NeumorphicContainer(
        padding: 0,
        borderRadius: 50,
        blur: 10,
        spread: 1,
        offset: const Offset(4, 4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Row(
            children: [
              IconButton(
                onPressed: () => drawerProvider.key.currentState!.openDrawer(),
                icon: Icon(Icons.menu, color: AppTheme.c!.text),
              ),
              const Spacer(),
              const NavBarLogo(),
              const Spacer(),
              const SizedBox(width: 48), // Padding equivalent to menu button
            ],
          ),
        ),
      ),
    ).animate().slideY(begin: -1, duration: 800.ms, curve: Curves.easeOut);
  }
}
