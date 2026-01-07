import 'package:flutter/material.dart';

class AppColors {
  static const Color nearBlack = Color(0xFF111827);
  static const Color neutralGray = Color(0xFF6B7280);
  static const Color lightGray = Color(0xFFF2F4F7);
  static const Color white = Color(0xFFFFFFFF);
  static const Color blueAccent = Color(0xFF135BEC);
  static const Color success = Color(0xFF16A34A);
  static const Color danger = Color(0xFFDC2626);
  static const Color outline = Color(0xFFD0D5DD);
}

class AppTheme {
  static ThemeData get light {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.blueAccent,
      onPrimary: AppColors.white,
      secondary: AppColors.blueAccent,
      onSecondary: AppColors.white,
      error: AppColors.danger,
      onError: AppColors.white,
      background: AppColors.white,
      onBackground: AppColors.nearBlack,
      surface: AppColors.white,
      onSurface: AppColors.nearBlack,
      surfaceTint: Colors.transparent,
      outline: AppColors.outline,
    );

    final baseText = _textTheme();

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      visualDensity: VisualDensity.compact,
      scaffoldBackgroundColor: AppColors.white,
      canvasColor: AppColors.white,
      shadowColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.nearBlack,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontFamily: 'IBMPlexSans',
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: AppColors.nearBlack,
          fontFamilyFallback: ['Inter', 'Source Sans'],
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.outline,
        thickness: 1,
        space: 0,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.neutralGray,
        size: 20,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
        },
      ),
      textTheme: baseText,
      primaryTextTheme: baseText,
      inputDecorationTheme: const InputDecorationTheme(
        filled: false,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        labelStyle: TextStyle(
          fontFamily: 'IBMPlexSans',
          fontSize: 13,
          color: AppColors.neutralGray,
          fontFamilyFallback: ['Inter', 'Source Sans'],
        ),
        hintStyle: TextStyle(
          fontFamily: 'IBMPlexSans',
          fontSize: 13,
          color: AppColors.neutralGray,
          fontFamilyFallback: ['Inter', 'Source Sans'],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.outline, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.outline, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.blueAccent, width: 1.2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.danger, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.danger, width: 1.2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(0),
          shape: const WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 14, vertical: 24),
          ),
          backgroundColor:
              const WidgetStatePropertyAll<Color>(AppColors.blueAccent),
          foregroundColor:
              const WidgetStatePropertyAll<Color>(AppColors.white),
          textStyle: WidgetStatePropertyAll<TextStyle>(
            baseText.labelLarge!,
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(0),
          shape: const WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 14, vertical: 24),
          ),
          backgroundColor:
              const WidgetStatePropertyAll<Color>(AppColors.blueAccent),
          foregroundColor:
              const WidgetStatePropertyAll<Color>(AppColors.white),
          textStyle: WidgetStatePropertyAll<TextStyle>(
            baseText.labelLarge!,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(0),
          shape: const WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          side: const WidgetStatePropertyAll(
            BorderSide(color: AppColors.outline, width: 1),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 14, vertical: 24),
          ),
          foregroundColor:
              const WidgetStatePropertyAll<Color>(AppColors.nearBlack),
          textStyle: WidgetStatePropertyAll<TextStyle>(
            baseText.labelLarge!,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
          shape: const WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          foregroundColor:
              const WidgetStatePropertyAll<Color>(AppColors.nearBlack),
          textStyle: WidgetStatePropertyAll<TextStyle>(
            baseText.labelLarge!,
          ),
        ),
      ),
      dataTableTheme: const DataTableThemeData(
        headingRowHeight: 40,
        dataRowMinHeight: 32,
        dataRowMaxHeight: 36,
        dividerThickness: 1,
      ),
      listTileTheme: const ListTileThemeData(
        dense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        iconColor: AppColors.neutralGray,
        textColor: AppColors.nearBlack,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        backgroundColor: AppColors.lightGray,
        contentTextStyle: TextStyle(
          fontFamily: 'IBMPlexSans',
          fontWeight: FontWeight.w500,
          color: AppColors.nearBlack,
          fontFamilyFallback: ['Inter', 'Source Sans'],
        ),
      ),
      checkboxTheme: const CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      radioTheme: const RadioThemeData(
        visualDensity: VisualDensity.compact,
      ),
      switchTheme: const SwitchThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  static TextTheme _textTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w500,
        fontSize: 34,
        height: 1.2,
        color: AppColors.nearBlack,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
      titleLarge: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w500,
        fontSize: 22,
        height: 1.25,
        color: AppColors.nearBlack,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
      titleMedium: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w600,
        fontSize: 18,
        height: 1.25,
        color: AppColors.nearBlack,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
      titleSmall: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 1.2,
        color: AppColors.nearBlack,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
      bodyLarge: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.35,
        color: AppColors.nearBlack,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
      bodyMedium: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.35,
        color: AppColors.nearBlack,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
      bodySmall: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.3,
        color: AppColors.neutralGray,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
      labelLarge: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 1.2,
        color: AppColors.nearBlack,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
      labelMedium: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.2,
        color: AppColors.neutralGray,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
      labelSmall: TextStyle(
        fontFamily: 'IBMPlexSans',
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 1.2,
        color: AppColors.neutralGray,
        fontFamilyFallback: ['Inter', 'Source Sans'],
      ),
    );
  }
}
