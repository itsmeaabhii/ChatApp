import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// App Colors
class AppColors {
  static const Color primaryGreen = Color(0xFF075E54);
  static const Color accentGreen = Color(0xFF25D366);
  static const Color backgroundGrey = Color(0xFFF5F5F5);
  static const Color senderBubble = Color(0xFFDCF8C6);
  static const Color receiverBubble = Color(0xFFFFFFFF);
  static const Color textDark = Color(0xFF000000);
  static const Color textGrey = Color(0xFF667781);
  static const Color divider = Color(0xFFE0E0E0);
  static const Color white = Color(0xFFFFFFFF);
  static const Color onlineGreen = Color(0xFF00C853);
  static const Color unreadBadge = Color(0xFF25D366);
}

// App Theme
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primaryGreen,
      scaffoldBackgroundColor: AppColors.backgroundGrey,
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryGreen,
        secondary: AppColors.accentGreen,
        surface: AppColors.white,
        onPrimary: AppColors.white,
        onSecondary: AppColors.white,
        onSurface: AppColors.textDark,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryGreen,
        foregroundColor: AppColors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
      ),
      textTheme: TextTheme(
        headlineSmall: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.textDark,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.textDark,
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.textGrey,
        ),
        labelSmall: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: AppColors.textGrey,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.accentGreen,
        foregroundColor: AppColors.white,
        elevation: 4,
      ),
      iconTheme: IconThemeData(
        color: AppColors.white,
      ),
    );
  }
}
