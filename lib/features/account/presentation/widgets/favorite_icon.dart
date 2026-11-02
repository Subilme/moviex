import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/features/account/presentation/providers/favorites_notifier.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

class FavoriteIcon extends ConsumerWidget {
  final Movie movie;

  const FavoriteIcon({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(isFavoriteProvider(movie.id));
    return IconButton(
      onPressed: () =>
          ref.read(favoritesNotifierProvider.notifier).toggle(movie),
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Theme.of(context).colorScheme.primary : null,
      ),
    );
  }
}
