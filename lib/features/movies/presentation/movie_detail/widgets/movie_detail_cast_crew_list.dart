import 'package:bot_toast/bot_toast.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

class const MovieDetailCastCrewList({super.key, required this.movie})
    extends StatelessWidget {
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        if (movie.cast.isNotEmpty) _buildCastList(),
        if (movie.crew.isNotEmpty) _buildCrewList(),
      ],
    );
  }

  Widget _buildCastList() {
    final visibleCast = movie.cast.take(10).toList();
    return Column(
      crossAxisAlignment: .start,
      children: [
        _buildTitle(
          title: "Cast",
          openAll: () => BotToast.showText(text: 'In Progress'),
        ),
        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: .horizontal,
            itemBuilder: (context, index) => _buildPersonCard(
              name: visibleCast[index].name,
              subtitle: visibleCast[index].character,
              profile: visibleCast[index].profilePath,
            ),
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemCount: visibleCast.length,
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildTitle({required String title, required VoidCallback openAll}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(child: Text(title, style: AppTextStyles.titleLarge)),
          TextButton(
            onPressed: openAll,
            child: Text(
              "Посмотреть все",
              style: AppTextStyles.body.copyWith(color: AppColors.textPrimary),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCrewList() {
    final visibleCrew = movie.crew.take(10).toList();
    return Column(
      crossAxisAlignment: .start,
      children: [
        _buildTitle(
          title: "Crew",
          openAll: () => BotToast.showText(text: 'In Progress'),
        ),
        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: .horizontal,
            itemBuilder: (context, index) => _buildPersonCard(
              name: visibleCrew[index].name,
              subtitle: visibleCrew[index].jobs.firstOrNull,
              profile: visibleCrew[index].profilePath,
            ),
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemCount: visibleCrew.length,
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildPersonCard({
    required String name,
    String? subtitle,
    String? profile,
  }) {
    return SizedBox(
      width: 100,
      child: Column(
        spacing: 10,
        crossAxisAlignment: .start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.r16),
            child: Image.network(
              "https://image.tmdb.org/t/p/w500$profile",
              height: 140,
              width: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, e, st) => Container(
                height: 140,
                width: double.infinity,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(
              name,
              style: AppTextStyles.caption,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (subtitle?.isNotEmpty ?? false)
            Expanded(
              child: Text(
                subtitle!,
                style: AppTextStyles.caption,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
