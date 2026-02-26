import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/widgets/placeholder_screen.dart';

// ---------------------------------------------------------------------------
// Route names — use constants to avoid magic strings
// ---------------------------------------------------------------------------
abstract class AppRoutes {
  static const dashboard = '/';
  static const serverDetail = '/servers/:serverId';
  static const settings = '/settings';
  static const addServer = '/add-server';
}

// ---------------------------------------------------------------------------
// Router provider (manual — no code-gen needed at this stage)
// ---------------------------------------------------------------------------
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.dashboard,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        // The shell provides the persistent sidebar + header layout.
        // The actual AppShell widget will be wired in a future iteration.
        builder: (context, state, child) => child,
        routes: [
          GoRoute(
            path: AppRoutes.dashboard,
            name: 'dashboard',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: PlaceholderScreen(
                label: 'Dashboard',
                icon: Icons.dashboard_outlined,
              ),
            ),
          ),
          GoRoute(
            path: AppRoutes.serverDetail,
            name: 'serverDetail',
            pageBuilder: (context, state) {
              final serverId = state.pathParameters['serverId']!;
              return NoTransitionPage(
                child: PlaceholderScreen(
                  label: 'Server: $serverId',
                  icon: Icons.dns_outlined,
                ),
              );
            },
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

      // Add-server dialog route — overlays the current screen.
      GoRoute(
        path: AppRoutes.addServer,
        name: 'addServer',
        pageBuilder: (context, state) => DialogPage(
          builder: (context) => const PlaceholderScreen(
            label: 'Add Server Dialog',
            icon: Icons.add_circle_outline,
          ),
        ),
      ),
    ],
  );
});

// ---------------------------------------------------------------------------
// Helper: DialogPage — renders a route as a Dialog overlay
// ---------------------------------------------------------------------------
class DialogPage<T> extends Page<T> {
  const DialogPage({required this.builder, super.key});

  final WidgetBuilder builder;

  @override
  Route<T> createRoute(BuildContext context) {
    return DialogRoute<T>(
      context: context,
      settings: this,
      builder: builder,
    );
  }
}
