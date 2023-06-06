import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DanaCloneTheme {
  // Colors
  static const Color mainBlue = Color(0xFF118EEA);
  static const Color secondaryBlue = Color(0xFF86C6F6);
  static const Color outlineButtonBlue = Color(0xFF4281AD);
  static const Color thirdBlue = Color(0xFF4A61E3);
  static const Color forthBlue = Color(0xFF3EA0E9);
  static const Color black = Color(0xFF000000);
  static const Color secondaryBlack = Color(0xFF313131);
  static const Color orange = Color(0xFFF0A446);
  static const Color whiteBg = Color(0xFFF5F5F5);
  static const Color grey = Color(0xFF727272);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightGrey = Color(0xFFE6E6E6);

  // Primary Text Theme
  static TextTheme primaryTextTheme = TextTheme(
    // Service: DANA Deals, Feed, Whats New, Nearaby: please allow
    headlineMedium: GoogleFonts.notoSans(
      color: black,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.3,
    ),
    // Appbar: 0,
    headlineSmall: GoogleFonts.notoSans(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    // HeaderWidget: Scan
    titleMedium: GoogleFonts.notoSans(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
    ),
    // Service Card: SERBU!
    labelLarge: GoogleFonts.notoSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    // AppBar: Rp,
    bodySmall: GoogleFonts.notoSans(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.4,
      color: secondaryBlue,
    ),
  );

  // Secondary Text Theme
  static TextTheme textTheme = TextTheme(
    // Promo Voucher
    displayMedium: GoogleFonts.openSans(
      fontSize: 19,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.1,
      color: white,
    ),
    // DANA PROTECTION
    displaySmall: GoogleFonts.prompt(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.6,
      color: grey,
      height: 1,
    ),
    // Nearby: Please allow
    headlineMedium: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.4,
      color: black,
    ),
    // Whats New: Pakai DANA,
    headlineSmall: GoogleFonts.openSans(
      fontSize: 16,
      color: DanaCloneTheme.black,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
    ),
    // Feed: Your Friend,
    titleLarge: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.3,
      color: secondaryBlack,
    ),
    // Subheader: Jajan,
    titleMedium: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: orange,
    ),
    // Service: Electricity, MORE FOR YOU: Choose,
    titleSmall: GoogleFonts.roboto(
      fontSize: 15,
      color: secondaryBlack,
    ),
    // Whats New: Belanja,
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: grey,
      letterSpacing: -0.3,
    ),
    // Feed: find out, Find Dana
    bodyMedium: GoogleFonts.roboto(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: secondaryBlack,
    ),
    // Outline Button, Navbar
    labelLarge: GoogleFonts.openSans(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.2,
      color: mainBlue,
    ),
    // Money-Back
    bodySmall: GoogleFonts.openSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
      color: grey,
    ),
  );

  // Theme Data
  static ThemeData themeData() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: mainBlue,
      ),
      primaryTextTheme: primaryTextTheme,
      textTheme: textTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: mainBlue,
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: outlineButtonBlue,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          textStyle: textTheme.labelLarge,
        ),
      ),
    );
  }
}
