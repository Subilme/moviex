import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/widgets/empty_state_view.dart';

class ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const ErrorView({super.key, required this.message, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return EmptyStateView(
      message: message,
      icon: Icons.warning_amber_rounded,
      actionText: onRetry != null ? "Retry" : null,
      onAction: onRetry,
    );
  }
}
