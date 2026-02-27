import 'package:flutter/material.dart';
import 'package:hashpod/features/shell/app_nav_rail.dart';
import 'package:hashpod/features/shell/server_rail.dart';
import 'package:hashpod/features/shell/app_header.dart';

// ---------------------------------------------------------------------------
// AppShell — root layout: nav rail + server rail + header + content slot
// ---------------------------------------------------------------------------

class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      body: Row(
        children: [
          // Far-left narrow navigation rail (fleet / settings)
          const AppNavRail(),

          // Server list sidebar
          const ServerRail(),

          // Right content area
          Expanded(
            child: Column(
              children: [
                // Top header bar
                const AppHeader(),
                // Scrollable content
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
