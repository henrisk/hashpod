import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

// ---------------------------------------------------------------------------
// Hashpod Design Tokens
// ---------------------------------------------------------------------------
abstract class HashpodColors {
  // Primary accent — electric cyan/teal
  static const accent = Color(0xFF00E5FF);
  static const accentDim = Color(0xFF006064);

  // Status colors
  static const statusOnline = Color(0xFF00E676);
  static const statusOffline = Color(0xFFEF5350);
  static const statusPaused = Color(0xFFFFCA28);

  // Surfaces (dark)
  static const surfaceBg = Color(0xFF0D1117);      // main background
  static const surfaceCard = Color(0xFF161B22);    // card surfaces
  static const surfaceSidebar = Color(0xFF0D1117); // sidebar
  static const surfaceBorder = Color(0xFF21262D);  // subtle borders

  // Text
  static const textPrimary = Color(0xFFE6EDF3);
  static const textSecondary = Color(0xFF8B949E);
  static const textMuted = Color(0xFF484F58);

  // Glow effects
  static const glowAccent = Color(0x4000E5FF);
  static const glowOnline = Color(0x4000E676);
  static const glowOffline = Color(0x40EF5350);
}

// ---------------------------------------------------------------------------
// Spacing scale
// ---------------------------------------------------------------------------
abstract class HashpodSpacing {
  static const xs = 4.0;
  static const sm = 8.0;
  static const md = 16.0;
  static const lg = 24.0;
  static const xl = 32.0;
  static const xxl = 48.0;

  static const sidebarWidth = 68.0;
  static const sidebarExpandedWidth = 220.0;
  static const headerHeight = 60.0;
}

// ---------------------------------------------------------------------------
// Border radii
// ---------------------------------------------------------------------------
abstract class HashpodRadius {
  static const sm = Radius.circular(6);
  static const md = Radius.circular(10);
  static const lg = Radius.circular(16);
  static const full = Radius.circular(100);

  static const smBorderRadius = BorderRadius.all(sm);
  static const mdBorderRadius = BorderRadius.all(md);
  static const lgBorderRadius = BorderRadius.all(lg);
}

// ---------------------------------------------------------------------------
// Text Styles
// ---------------------------------------------------------------------------
abstract class HashpodTextStyles {
  static TextStyle get displayLg => GoogleFonts.inter(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: HashpodColors.textPrimary,
        letterSpacing: -0.5,
      );

  static TextStyle get titleMd => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: HashpodColors.textPrimary,
      );

  static TextStyle get labelSm => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: HashpodColors.textSecondary,
        letterSpacing: 0.4,
      );

  static TextStyle get bodyMd => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: HashpodColors.textPrimary,
      );

  static TextStyle get mono => GoogleFonts.jetBrainsMono(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: HashpodColors.textSecondary,
      );

  static TextStyle get monoBold => GoogleFonts.jetBrainsMono(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: HashpodColors.textPrimary,
      );
}

// ---------------------------------------------------------------------------
// App ThemeData
// ---------------------------------------------------------------------------
class HashpodTheme {
  HashpodTheme._();

  static ThemeData get dark {
    final base = FlexThemeData.dark(
      scheme: FlexScheme.deepBlue,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 12,
      subThemesData: const FlexSubThemesData(
        interactionEffects: true,
        tintedDisabledControls: true,
        useM2StyleDividerInM3: true,
        elevatedButtonSchemeColor: SchemeColor.primary,
        outlinedButtonOutlineSchemeColor: SchemeColor.primary,
        toggleButtonsBorderSchemeColor: SchemeColor.primary,
        segmentedButtonSchemeColor: SchemeColor.primary,
        inputDecoratorIsFilled: true,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorRadius: 8.0,
        cardRadius: 10.0,
        popupMenuRadius: 8.0,
        dialogRadius: 16.0,
        bottomSheetRadius: 16.0,
        navigationRailUseIndicator: true,
        navigationRailLabelType: NavigationRailLabelType.none,
        navigationRailIndicatorSchemeColor: SchemeColor.primary,
        navigationRailIndicatorOpacity: 0.12,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      fontFamily: GoogleFonts.inter().fontFamily,
    );

    return base.copyWith(
      scaffoldBackgroundColor: HashpodColors.surfaceBg,
      cardColor: HashpodColors.surfaceCard,
      dividerColor: HashpodColors.surfaceBorder,
      colorScheme: base.colorScheme.copyWith(
        surface: HashpodColors.surfaceCard,
        onSurface: HashpodColors.textPrimary,
        primary: HashpodColors.accent,
        onPrimary: HashpodColors.surfaceBg,
      ),
      textTheme: GoogleFonts.interTextTheme(base.textTheme).copyWith(
        bodyMedium: HashpodTextStyles.bodyMd,
        labelSmall: HashpodTextStyles.labelSm,
        titleMedium: HashpodTextStyles.titleMd,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: HashpodColors.surfaceCard,
        border: OutlineInputBorder(
          borderRadius: HashpodRadius.mdBorderRadius,
          borderSide: const BorderSide(color: HashpodColors.surfaceBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: HashpodRadius.mdBorderRadius,
          borderSide: const BorderSide(color: HashpodColors.surfaceBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: HashpodRadius.mdBorderRadius,
          borderSide:
              const BorderSide(color: HashpodColors.accent, width: 1.5),
        ),
        hintStyle: HashpodTextStyles.bodyMd.copyWith(
          color: HashpodColors.textMuted,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: HashpodSpacing.md,
          vertical: HashpodSpacing.sm + 2,
        ),
      ),
    );
  }
}
