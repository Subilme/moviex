import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/features/account/presentation/providers/favorites_notifier.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:url_launcher/url_launcher.dart';

class const MovieDetailActions({super.key, required this.movie})
    extends ConsumerWidget {
  final Movie movie;

  ButtonStyle get _buttonStyle => ElevatedButton.styleFrom(
    backgroundColor: AppColors.surface,
    padding: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        spacing: 8,
        children: [
          if (movie.trailer?.videoUri != null)
            Expanded(child: _buildTrailerButton()),
          Expanded(child: _buildFavoriteButton(ref)),
        ],
      ),
    );
  }

  Widget _buildTrailerButton() {
    return ElevatedButton(
      style: _buttonStyle,
      onPressed: () async {
        final uri = movie.trailer!.videoUri!;
        if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
          BotToast.showText(
            text: 'Could not launch $uri',
            backgroundColor: AppColors.surface,
            contentColor: Colors.white,
          );
        }
      },
      child: Column(
        spacing: 8,
        children: [Icon(Icons.play_circle), Text("Watch trailer")],
      ),
    );
  }

  Widget _buildFavoriteButton(WidgetRef ref) {
    final isFavorite = ref.watch(isFavoriteProvider(movie.id));
    return ElevatedButton(
      style: _buttonStyle,
      onPressed: () =>
          ref.read(favoritesNotifierProvider.notifier).toggle(movie),
      child: Column(
        spacing: 8,
        children: [
          Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.white : null,
          ),
          Text("Favorite"),
        ],
      ),
    );
  }
}
