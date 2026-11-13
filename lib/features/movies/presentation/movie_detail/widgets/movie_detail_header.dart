import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

class const MovieDetailHeader({
  super.key,
  required this.movie,
  required this.onTapBack,
  required this.onTapBookmark,
}) extends StatelessWidget {
  final Movie movie;
  final VoidCallback onTapBack;
  final VoidCallback onTapBookmark;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _buildBackdrop(),
          _buildOverlayGradient(),
          Positioned(left: 8, top: 8, child: _buildBackButton()),
          Positioned(top: 8, right: 8, child: _buildBookmarkButton()),
        ],
      ),
    );
  }

  Widget _buildBackdrop() {
    if (movie.backdropPath?.isEmpty ?? true) {
      return Container(color: Colors.grey[850]);
    }
    return Image.network(
      "https://image.tmdb.org/t/p/w780${movie.backdropPath}",
      width: double.infinity,
      fit: BoxFit.cover,
      errorBuilder: (_, _, _) => Container(color: Colors.grey),
    );
  }

  Widget _buildOverlayGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.transparent,
              AppColors.background,
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return InkWell(
      onTap: onTapBack,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.surface,
        ),
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  Widget _buildBookmarkButton() {
    return InkWell(
      onTap: onTapBookmark,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.surface,
        ),
        child: Icon(Icons.bookmark_border),
      ),
    );
  }
}
