import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.indigo100,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primaryContainer.withOpacity(1);
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primaryContainer.withOpacity(1);
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primaryContainer.withOpacity(1),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.indigo100,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 16.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 14.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 12.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 36.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 32.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 24.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 10.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 8.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 20.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 16.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 14.fSize,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFD12B2F),
    primaryContainer: Color(0X4CFFFFFF),
    secondaryContainer: Color(0XFF114FF5),

    // Error colors
    onError: Color(0XFF4F4F4F),

    // On colors(text colors)
    onPrimary: Color(0XFF080056),
    onPrimaryContainer: Color(0XFF333333),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFCC210);
  Color get amberA400 => Color(0XFFFDC500);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue50 => Color(0XFFDCEDFE);
  Color get blue5001 => Color(0XFFDCEDF9);
  Color get blueA400 => Color(0XFF3772FF);

  // BlueGray
  Color get blueGray300 => Color(0XFF8897AD);
  Color get blueGray30001 => Color(0XFF8E90A6);
  Color get blueGray400 => Color(0XFF878E99);
  Color get blueGray40001 => Color(0XFF79839D);
  Color get blueGray40002 => Color(0XFF8785AD);
  Color get blueGray500 => Color(0XFF667398);
  Color get blueGray900 => Color(0XFF321C3B);
  Color get blueGray90014 => Color(0X141C2731);

  // Gray
  Color get gray100 => Color(0XFFF0F4FE);
  Color get gray10001 => Color(0XFFF6F6F6);
  Color get gray10002 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFEEEEEE);
  Color get gray20001 => Color(0XFFEBEBEB);
  Color get gray300 => Color(0XFFE0E0E0);
  Color get gray30001 => Color(0XFFE6E8E6);
  Color get gray30002 => Color(0XFFE2E5E7);
  Color get gray400 => Color(0XFFBDBDBD);
  Color get gray50 => Color(0XFFF9F8F8);
  Color get gray5001 => Color(0XFFF9F7F8);
  Color get gray5002 => Color(0XFFF8F8F8);
  Color get gray5003 => Color(0XFFF9FAFE);
  Color get gray5004 => Color(0XFFFCFCFC);
  Color get gray5005 => Color(0XFFF7F7FF);
  Color get gray600 => Color(0XFF828282);
  Color get gray800 => Color(0XFF3A3A3A);
  Color get gray900 => Color(0XFF2B2A29);
  Color get gray90001 => Color(0XFF14171F);
  Color get gray90002 => Color(0XFF1A2128);

  // Green
  Color get green500 => Color(0XFF4C956C);

  // Indigo
  Color get indigo100 => Color(0XFFC2C7D6);
  Color get indigo10001 => Color(0XFFC5C4D4);

  // Orange
  Color get orange100 => Color(0XFFFFD6A0);

  // Purple
  Color get purple400 => Color(0XFF9B51E0);

  // Red
  Color get red50 => Color(0XFFFFF1F1);
  Color get red50019 => Color(0X19F63434);

  // White
  Color get whiteA700 => Color(0XFFFDFDFD);

  // Yellow
  Color get yellow800 => Color(0XFFF79E1B);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
