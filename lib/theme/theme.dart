import 'package:flutter/material.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';

class AppTheme {
  static ThemeData get theTheme => ThemeData(
        //! HOW PAGES TRANSITION BETWEEN EACH OTHER
        //! ASSIGN ALL PLATFORMS TO TRANSITION USING THE ZOOM PAGE TRANSITION
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            for (final platform in TargetPlatform.values)
              platform: const ZoomPageTransitionsBuilder()
          },
        ),
        scaffoldBackgroundColor: AppColours.scaffoldBackgroundColour,
        useMaterial3: true,

        fontFamily: "PPNeueMontreal",
      );
}
