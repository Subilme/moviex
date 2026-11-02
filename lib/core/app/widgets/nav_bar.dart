import 'package:collection/collection.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';

const double kNavBarHeight = 64.0;

class const NavBar({
  required this.onItemClick,
  required this.items,
  required this.itemBuilder,
  required this.backgroundColor,
  super.key,
  this.horizontalPadding,
}) extends StatelessWidget {
  final void Function(int index) onItemClick;
  final List<BottomNavigationBarItem> items;
  final NavBarItem Function(int index, BottomNavigationBarItem item)
  itemBuilder;
  final Color backgroundColor;
  final EdgeInsets? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    final defaultHorizontalPadding = MediaQuery.of(context).size.width * 0.05;

    return ColoredBox(
      color: backgroundColor,
      child: SafeArea(
        top: false,
        child: Container(
          width: double.infinity,
          height: kNavBarHeight,
          padding: EdgeInsets.only(
            left: horizontalPadding?.left ?? defaultHorizontalPadding,
            right: horizontalPadding?.right ?? defaultHorizontalPadding,
            top: 10.0,
            bottom: 8.0,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadiusDirectional.vertical(
              top: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: 2.0,
                spreadRadius: 1,
                offset: const Offset(2.0, 2.0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.mapIndexed((index, item) {
              return Expanded(
                child: InkWell(
                  onTap: () => onItemClick(index),
                  child: itemBuilder(index, item),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final bool isSelected;
  final String tabName;
  final Widget activeIcon;
  final Widget inactiveIcon;
  final Color activeColor;
  final Color inactiveColor;

  const NavBarItem({
    super.key,
    required this.isSelected,
    required this.tabName,
    required this.activeIcon,
    required this.inactiveIcon,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        if (isSelected) activeIcon else inactiveIcon,
        _buildItemTitle(tabName, isSelected),
      ],
    );
  }

  Widget _buildItemTitle(String tabName, bool isSelected) {
    return Container(
      height: 16,
      alignment: Alignment.center,
      child: Text(
        tabName,
        textAlign: TextAlign.center,
        style: AppTextStyles.body.copyWith(
          color: isSelected ? activeColor : inactiveColor,
        ),
      ),
    );
  }
}
