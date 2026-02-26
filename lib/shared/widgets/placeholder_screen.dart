import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

/// Generic placeholder used during development to stub out screens
/// that haven't been fully implemented yet.
class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({
    super.key,
    required this.label,
    this.icon = Icons.widgets_outlined,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HashpodColors.surfaceBg,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 56,
              color: HashpodColors.accent.withValues(alpha: 0.5),
            ),
            const SizedBox(height: HashpodSpacing.md),
            Text(
              label,
              style: HashpodTextStyles.titleMd.copyWith(
                color: HashpodColors.textSecondary,
              ),
            ),
            const SizedBox(height: HashpodSpacing.sm),
            Text(
              'Coming soon',
              style: HashpodTextStyles.labelSm,
            ),
          ],
        ),
      ),
    );
  }
}
