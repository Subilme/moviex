import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';

class CardWidget extends StatelessWidget {
  final Widget child;

  const CardWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(AppRadius.r16),
      ),
      child: child,
    );
  }
}
