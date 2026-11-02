import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/app/widgets/nav_bar.dart';
import 'package:moviex/core/theme/app_theme.dart';

class const AppScaffold({super.key, required this.navigationShell})
    extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  List<BottomNavigationBarItem> get _items => [
    BottomNavigationBarItem(
      activeIcon: Icon(Icons.movie, color: AppColors.primary),
      icon: Icon(Icons.movie),
      label: 'Discover',
    ),
    // BottomNavigationBarItem(
    //   activeIcon: Icon(Icons.calendar_today, color: AppColors.primary),
    //   icon: Icon(Icons.calendar_today),
    //   label: 'Calendar',
    // ),
    BottomNavigationBarItem(
      activeIcon: Icon(Icons.person, color: AppColors.primary),
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavBar(
        items: _items,
        itemBuilder: (index, item) => NavBarItem(
          isSelected: index == navigationShell.currentIndex,
          tabName: item.label!,
          activeIcon: item.activeIcon,
          inactiveIcon: item.icon,
          activeColor: AppColors.primary,
          inactiveColor: Colors.white,
        ),
        onItemClick: (index) => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
        backgroundColor: AppColors.surface,
      ),
    );
  }
}
