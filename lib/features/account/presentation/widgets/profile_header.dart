import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/core/utils/string_extension.dart';
import 'package:moviex/core/widgets/card_widget.dart';
import 'package:moviex/features/account/domain/entities/user.dart';
import 'package:moviex/features/account/presentation/providers/favorites_notifier.dart';

class const ProfileHeader({super.key, required this.user})
    extends ConsumerWidget {
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CardWidget(
      child: Column(
        spacing: AppSpacing.s16,
        children: [
          Row(
            spacing: AppSpacing.s16,
            crossAxisAlignment: .start,
            children: [
              _buildAvatar(),
              Expanded(child: _buildInfo()),
            ],
          ),
          _buildMovieStatistics(ref),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Image.network(
      user.avatarUrl!,
      fit: BoxFit.cover,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) =>
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: AppColors.surface,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(AppRadius.r8),
            ),
            child: child,
          ),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: AppColors.surface,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(AppRadius.r8),
            ),
            child: child,
          );
        }
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: AppColors.surface,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(AppRadius.r8),
          ),
          child:
              loadingProgress.cumulativeBytesLoaded ==
                  loadingProgress.expectedTotalBytes
              ? child
              : CircularProgressIndicator(),
        );
      },
      errorBuilder: (context, e, st) =>
          Container(height: 180, width: double.infinity, color: Colors.grey),
    );
  }

  Widget _buildInfo() {
    return Column(
      spacing: AppSpacing.s4,
      crossAxisAlignment: .start,
      children: [
        Text(user.username, style: AppTextStyles.titleMedium),
        if (user.name?.isNotEmpty ?? false)
          Row(
            spacing: AppSpacing.s12,
            children: [
              Text(user.name!, style: AppTextStyles.body),
              Text(_generateCountryLanguageString()),
            ],
          ),
        if (user.description?.isNotEmpty ?? false)
          Text(
            user.description!,
            style: AppTextStyles.caption,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
      ],
    );
  }

  String _generateCountryLanguageString() {
    final list = [
      if (user.language?.isNotEmpty ?? false)
        [
          ?user.language?.countryCodeToFlag(),
          ?user.language?.toUpperCase(),
        ].join(" "),
      ?user.country?.toUpperCase(),
    ];
    return list.join(" · ");
  }

  Widget _buildMovieStatistics(WidgetRef ref) {
    final favoritesCount =
        ref.watch(favoritesNotifierProvider).value?.length ?? 0;
    return Row(
      spacing: AppSpacing.s24,
      children: [
        Row(
          spacing: AppSpacing.s8,
          children: [
            Icon(Icons.favorite, color: AppColors.textSecondary),
            Text(
              favoritesCount.toString(),
              style: AppTextStyles.button,
              textAlign: .center,
            ),
          ],
        ),
        Row(
          spacing: AppSpacing.s8,
          children: [
            Icon(Icons.watch_later_outlined, color: AppColors.textSecondary),
            Text("1", style: AppTextStyles.button, textAlign: .center),
          ],
        ),
        Row(
          spacing: AppSpacing.s8,
          children: [
            Icon(Icons.star, color: AppColors.textSecondary),
            Text("1", style: AppTextStyles.button, textAlign: .center),
          ],
        ),
      ],
    );
  }
}
