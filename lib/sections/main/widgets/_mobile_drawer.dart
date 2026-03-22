part of '../main_section.dart';

class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer();

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff050505),
          border: Border(right: BorderSide(color: AppTheme.c!.primary!.withOpacity(0.1), width: 1)),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const NavBarLogo(),
            const SizedBox(height: 30),
            const Divider(color: Colors.white10),
            ListTile(
              leading: Icon(Icons.light_mode, color: AppTheme.c!.primary),
              title: const Text("DARK MODE", style: TextStyle(color: Colors.white70, letterSpacing: 2)),
              trailing: Switch(
                value: appProvider.isDark,
                onChanged: (value) => appProvider.setTheme(value ? ThemeMode.dark : ThemeMode.light),
                activeColor: AppTheme.c!.primary,
              ),
            ),
            const Divider(color: Colors.white10),
            Expanded(
              child: ListView(
                children: NavBarUtils.names.asMap().entries.map((e) => ListTile(
                  leading: Icon(NavBarUtils.icons[e.key], color: AppTheme.c!.primary),
                  title: Text(e.value.toUpperCase(), style: const TextStyle(color: Colors.white, letterSpacing: 2)),
                  onTap: () {
                    scrollProvider.scrollMobile(e.key);
                    Navigator.pop(context);
                  },
                )).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () => openURL(StaticUtils.resume),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.c!.primary,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                ),
                child: const Text("RESUME", style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
