import 'package:flutter/material.dart';
import 'package:moviex/core/theme/app_theme.dart';

class EmptyStateView extends StatelessWidget {
  final String message;
  final IconData icon;
  final VoidCallback? onAction;
  final String? actionText;

  const EmptyStateView({
    super.key,
    required this.message,
    this.icon = Icons.movie_outlined,
    this.onAction,
    this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 64, color: Colors.grey[500]),
          const SizedBox(height: 16),
          Text(
            message,
            style: theme.bodyMedium?.copyWith(color: Colors.grey[400]),
            textAlign: TextAlign.center,
          ),
          if (onAction != null && actionText != null) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onAction,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.r16),
                ),
              ),
              child: Text(actionText!),
            ),
          ],
        ],
      ),
    );
  }
}
