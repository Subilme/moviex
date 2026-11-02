import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/features/account/domain/entities/user.dart';
import 'package:moviex/features/account/domain/usecases/get_rated_movies_usecase.dart';
import 'package:moviex/features/account/presentation/providers/favorites_notifier.dart';
import 'package:moviex/features/account/presentation/providers/user_provider.dart';
import 'package:moviex/features/account/presentation/widgets/favorite_list.dart';
import 'package:moviex/features/account/presentation/widgets/last_rated_movies_list.dart';
import 'package:moviex/features/account/presentation/widgets/profile_header.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);
    return Scaffold(
      appBar: buildAppBar(),
      body: user.when(
        data: (data) => buildBody(data, ref),
        error: (error, stackTrace) => buildError(error, ref),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(
      title: Text("Profile"),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
      ],
    );
  }

  Widget buildError(Object error, WidgetRef ref) {
    final errorString = error is FailureException
        ? error.failure.message
        : error.toString();
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.s16),
      child: Column(
        spacing: AppSpacing.s16,
        mainAxisAlignment: .center,
        crossAxisAlignment: .stretch,
        children: [
          Text(
            errorString,
            style: AppTextStyles.titleMedium,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: () => refresh(ref), child: Text("Refresh")),
        ],
      ),
    );
  }

  Widget buildBody(User data, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () => refresh(ref),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.s16),
        child: Column(
          spacing: AppSpacing.s24,
          crossAxisAlignment: .stretch,
          children: [
            ProfileHeader(user: data),
            FavoriteList(),
            LastRatedMoviesList(),
          ],
        ),
      ),
    );
  }

  Future<void> refresh(WidgetRef ref) async {
    ref.invalidate(ratedProvider);
    await Future.wait([
      ref.read(favoritesNotifierProvider.notifier).refresh(),
      ref.read(userNotifierProvider.notifier).refresh(),
    ]);
  }
}
