import 'package:flutter/material.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/features/account/presentation/widgets/favorite_icon.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final double? width;
  final VoidCallback? onTap;

  const MovieCard({super.key, required this.movie, this.width, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: .opaque,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.r16),
              child: Stack(
                children: [
                  _buildImage(context),
                  Align(
                    alignment: .centerRight,
                    child: FavoriteIcon(movie: movie),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.s8),
            Text(
              movie.title,
              style: AppTextStyles.titleLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                const Icon(Icons.star, size: 16, color: Colors.yellow),
                const SizedBox(width: 4),
                Text(
                  movie.voteAverage.toStringAsFixed(1),
                  style: AppTextStyles.caption,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    if (movie.posterPath != null) {
      return Image.network(
        "https://image.tmdb.org/t/p/w500${movie.posterPath}",
        height: 180,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (context, e, st) =>
            Container(height: 180, width: double.infinity, color: Colors.grey),
      );
    }

    return Container(height: 180, width: double.infinity, color: Colors.grey);
  }
}
