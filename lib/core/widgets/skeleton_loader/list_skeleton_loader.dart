import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/core/widgets/skeleton_loader/skeleton_loader.dart';

class const ListSkeletonLoader({
  super.key,
  this.width = 140,
  this.height = 220,
  this.borderRadius = const BorderRadius.all(Radius.circular(16)),
}) extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height + 30,
      child: ListView.separated(
        scrollDirection: .horizontal,
        itemCount: 10,
        separatorBuilder: (_, _) => SizedBox(width: AppSpacing.s12),
        itemBuilder: (_, _) => SkeletonLoader(
          width: width,
          height: height,
          borderRadius: borderRadius,
        ),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s16),
      ),
    );
  }
}
