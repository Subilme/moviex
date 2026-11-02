import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/core/widgets/card_widget.dart';
import 'package:moviex/features/account/presentation/providers/favorites_notifier.dart';

class ProfileStatisticsWidget extends ConsumerWidget {
  const ProfileStatisticsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesCount =
        ref.watch(favoritesNotifierProvider).value?.length ?? 0;
    return CardWidget(
      child: IntrinsicHeight(
        child: Row(
          spacing: AppSpacing.s8,
          children: [
            Expanded(
              child: _buildItem(
                title: "Избранное",
                value: favoritesCount.toString(),
              ),
            ),
            Expanded(
              child: _buildItem(title: "Список желаний", value: "5"),
            ),
            Expanded(
              child: _buildItem(title: "Оценки", value: "8"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem({required String title, required String value}) {
    return Column(
      mainAxisAlignment: .spaceBetween,
      spacing: AppSpacing.s16,
      children: [
        Text(title, style: AppTextStyles.titleMedium, textAlign: .center),
        Text(value, style: AppTextStyles.button),
      ],
    );
  }
}
