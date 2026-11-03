import 'package:material_ui/material_ui.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.background,
  primaryColor: AppColors.primary,
  cardColor: AppColors.surface,
  appBarTheme: AppBarTheme(backgroundColor: AppColors.background, elevation: 0),
  colorScheme: ColorScheme.dark(
    primary: AppColors.primary,
    surface: AppColors.surface,
  ),
  textTheme: TextTheme(
    titleLarge: AppTextStyles.titleLarge,
    titleMedium: AppTextStyles.titleMedium,
    bodyMedium: AppTextStyles.body,
    bodySmall: AppTextStyles.caption,
    labelLarge: AppTextStyles.button,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(AppTextStyles.button),
      backgroundColor: WidgetStatePropertyAll(AppColors.primary),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.surface,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: Colors.white,
    unselectedIconTheme: IconThemeData(),
    type: .fixed,
    enableFeedback: false,
  ),
  tabBarTheme: TabBarThemeData(
    labelColor: AppColors.textPrimary,
    // Зазор 8 между сегментами: по 4 с каждой стороны.
    labelPadding: const EdgeInsets.symmetric(horizontal: 4),
    indicatorSize: TabBarIndicatorSize.tab,
    dividerColor: Colors.transparent,
    dividerHeight: 0,
    overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    splashFactory: NoSplash.splashFactory,
    // Выбранный сегмент — pill-заливка surface (Ui-Kit 3288:1883).
    indicator: BoxDecoration(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(90),
    ),
    unselectedLabelColor: AppColors.textPrimary,
  ),
);

abstract final class AppColors {
  static const primary = Color(0xFFE50914);
  static const background = Color(0xFF121212);
  static const surface = Color(0xFF1E1E1E);
  static const textPrimary = Color(0xFFFFFFFF);
  static const textSecondary = Color(0xFFB3B3B3);
  static const error = Color(0xFFCF6679);
}

abstract final class AppTextStyles {
  static final TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  static final TextStyle titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static final TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
  static final TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
  static final TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
}

abstract final class AppSpacing {
  static const s4 = 4.0;
  static const s8 = 8.0;
  static const s12 = 12.0;
  static const s16 = 16.0;
  static const s24 = 24.0;
  static const s32 = 32.0;
}

abstract final class AppRadius {
  static const r8 = 8.0;
  static const r16 = 16.0;
  static const r24 = 24.0;
}
