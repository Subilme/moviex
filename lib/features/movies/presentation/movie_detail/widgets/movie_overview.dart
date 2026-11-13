import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

class const MovieOverview({super.key, required this.movie})
    extends StatelessWidget {
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        spacing: 16,
        crossAxisAlignment: .end,
        children: [
          _buildPoster(),
          Expanded(child: _buildInfo()),
        ],
      ),
    );
  }

  Widget _buildPoster() {
    if (movie.posterPath?.isNotEmpty ?? false) {
      return Image.network(
        "https://image.tmdb.org/t/p/w500${movie.posterPath}",
        height: 160,
        width: 100,
        fit: BoxFit.cover,
        frameBuilder: (context, child, _, _) => Container(
          clipBehavior: .hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.r16),
          ),
          child: child,
        ),
        errorBuilder: (context, e, st) =>
            Container(height: 160, width: 100, color: Colors.grey),
      );
    }

    return Container(height: 160, width: 100, color: Colors.grey);
  }

  Widget _buildInfo() {
    return Column(
      spacing: 8,
      crossAxisAlignment: .start,
      children: [
        _buildTitle(),
        Text([?getReleaseYear(), movie.originalTitle].join(" · ")),
        _buildRating(),
        if (movie.genres.isNotEmpty) _buildGenreList(),
      ],
    );
  }

  Widget _buildTitle() {
    return Text(movie.title, style: AppTextStyles.titleLarge);
  }

  Widget _buildRating() {
    return Row(
      spacing: 4,
      children: [
        const Icon(Icons.star, size: 16, color: Colors.yellow),
        Text(movie.voteAverage.toStringAsFixed(1), style: AppTextStyles.button),
        if (movie.voteCount > 0)
          Text("(${movie.voteCount} votes)", style: AppTextStyles.body),
      ],
    );
  }

  Widget _buildGenreList() {
    final genreListString = movie.genres.map((g) => g.name).join(" · ");
    return Text(genreListString);
  }

  String? getReleaseYear() {
    if (movie.releaseDate?.isEmpty ?? true) return null;

    final date = DateTime.tryParse(movie.releaseDate!);
    if (date == null) return null;

    return date.year.toString();
  }
}
