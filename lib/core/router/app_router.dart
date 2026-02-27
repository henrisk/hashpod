import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hashpod/features/shell/app_shell.dart';
import 'package:hashpod/features/containers/presentation/screens/dashboard_screen.dart';
import 'package:hashpod/shared/widgets/placeholder_screen.dart';

// ---------------------------------------------------------------------------
// Route names
// ---------------------------------------------------------------------------
abstract class AppRoutes {
  static const dashboard = '/';
  static const settings = '/settings';
}

// ---------------------------------------------------------------------------
// Router provider
// ---------------------------------------------------------------------------
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.dashboard,
    debugLogDiagnostics: false,
    routes: [
      ShellRoute(
        builder: (context, state, child) => AppShell(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.dashboard,
            name: 'dashboard',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: DashboardScreen(),
            ),
          ),
          GoRoute(
            path: AppRoutes.settings,
            name: 'settings',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: PlaceholderScreen(
                label: 'Settings',
                icon: Icons.settings_outlined,
              ),
            ),
          ),
        ],
      ),
    ],
  );
});

// ---------------------------------------------------------------------------
// Helper: DialogPage
// ---------------------------------------------------------------------------
class DialogPage<T> extends Page<T> {
  const DialogPage({required this.builder, super.key});
  final WidgetBuilder builder;

  @override
  Route<T> createRoute(BuildContext context) => DialogRoute<T>(
        context: context,
        settings: this,
        builder: builder,
      );
}
