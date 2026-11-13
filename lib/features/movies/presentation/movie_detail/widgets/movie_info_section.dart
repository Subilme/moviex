import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/core/utils/int_extension.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

class const MovieInfoSection({super.key, required this.movie})
    extends StatelessWidget {
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 12,
        crossAxisAlignment: .start,
        children: [
          if (movie.overview?.isNotEmpty ?? false) ...[
            const Divider(),
            _buildOverview(),
          ],
          const Divider(),
          _buildInfoBlock(),
          const Divider(),
        ],
      ),
    );
  }

  Widget _buildOverview() {
    return Column(
      spacing: 12,
      crossAxisAlignment: .start,
      children: [
        Text("Overview", style: AppTextStyles.titleLarge),
        Text(movie.overview!, style: AppTextStyles.body),
      ],
    );
  }

  Widget _buildInfoBlock() {
    return Column(
      spacing: 12,
      crossAxisAlignment: .start,
      children: [
        Text("Movie details", style: AppTextStyles.titleLarge),
        Row(
          spacing: 16,
          crossAxisAlignment: .start,
          children: [
            Expanded(
              child: Column(
                spacing: 12,
                crossAxisAlignment: .start,
                children: [
                  _buildInfoItem(
                    title: "Release date",
                    value: _getFormattedDate(movie.releaseDate),
                  ),
                  _buildInfoItem(
                    title: "Budget",
                    value: movie.budget.formatMoney(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                spacing: 8,
                crossAxisAlignment: .start,
                children: [
                  _buildInfoItem(
                    title: "Runtime",
                    value: movie.runtime > 0 ? "${movie.runtime} minutes" : "—",
                  ),
                  _buildInfoItem(
                    title: "Revenue",
                    value: movie.revenue.formatMoney(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoItem({required String title, required String value}) {
    return Column(
      spacing: 6,
      crossAxisAlignment: .start,
      children: [
        Text(title, style: AppTextStyles.caption),
        Text(value, style: AppTextStyles.button),
      ],
    );
  }

  String _getFormattedDate(String? date) {
    if (date == null) return "—";

    final parsed = DateTime.tryParse(date);
    if (parsed == null) return "—";
    return DateFormat("MMMM dd, yyyy").format(parsed);
  }
}
