//! THEME COLOURS.
import 'package:flutter/material.dart';

abstract class AppColours {
  const AppColours._();

  //! MAIN COLOUR
  static const Color appWhite = Color(0xFFFFFFFF);
  static const Color appBlue = Color(0xFF1C77FF);
  static const Color appGrey50 = Color(0xFFF9FAFB);
  static const Color appGrey200 = Color(0xFFEAECF0);
  static const Color appGrey300 = Color(0xFFD0D5DD);
  static const Color appGrey500 = Color(0xFF667085);
  static const Color neutralLight600 = Color(0xFF36394A);
  static const Color appGrey600 = Color(0xFF475467);
  static const Color appGrey700 = Color(0xFF344054);
  static const Color appGrey900 = Color(0xFF101828);
  static const Color containerBGColour = Color(0xFFFBFBFB);
  static const Color borderColour = Color(0xFFDDDDDD);

  //! BG GRADIENT COLOURS
  static const Color bgGradientOne = Color(0xFFFFFFFF);
  static const Color bgGradientTwo = Color(0xFFE7F5F7);
  static const Color bgGradientThree = Color(0xFFF4F5F7);

  //! BUTTON GRADIENT COLOURS
  static const Color whiteButtonGradientOne = Color(0xFFDFE1E7);
  static const Color whiteButtonGradientTwo = Color(0xFFDFE1E7);
  static const Color whiteButtonGradientThree = Color(0xFFFFFFFF);

  //! BUTTON SHADOWS
  static final Color whiteButtonShadowGradientOne =
      const Color(0xFF123769).withOpacity(0.08);
  static final Color whiteButtonShadowGradientTwo =
      const Color(0xFF2A3B51).withOpacity(0.12);
  static final Color blueButtonShadowGradientOne =
      const Color(0xFF034CB8).withOpacity(0.76);
  static final Color blueButtonShadowGradientTwo =
      const Color(0xFF19396A).withOpacity(0.4);

  //! BACKGROUND COLOURS
  static Color scaffoldBackgroundColour = appWhite;

  //! TEXT COLOURS
  static const Color header1TextColour = Color(0xFF333333);
  static const Color header2TextColour = Color(0xFF828282);
  static const Color bodyText1TextColour = Color(0xFF4F4F4F);
  static const Color bodyText2TextColour = Color(0xFF828282);
  static const Color textFormFieldLabelColour = Color(0xFF4F4F4F);
  static const Color elevatedButtonTextColour = Color(0XffFFFFFF);
  static Color lettersAndIconsFaintColour = const Color(0xFF565759);
  static Color focusedTextFormFieldColour = const Color(0xFFFEA742);
  static const Color black = Color(0xFF333333);
}
