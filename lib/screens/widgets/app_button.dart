import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logistics_landing_page/screens/widgets/app_loader.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/type_defs.dart';

class RegularButton extends ConsumerWidget {
  final void Function() onTap;
  final AppHapticFeedbackType? feedbackType;
  final String? buttonText;
  final double? radius;
  final bool isLoading;
  final bool isButtonColoured;
  const RegularButton({
    super.key,
    required this.onTap,
    required this.buttonText,
    required this.isLoading,
    required this.isButtonColoured,
    this.radius,
    this.feedbackType,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      elevation: 12.0,
      shadowColor: AppColours.whiteButtonShadowGradientOne,
      child: Container(
        width: 100.0,
        height: 40,
        padding: EdgeInsets.symmetric(
          vertical: isLoading ? 6.0.h : 4.0.h,
          horizontal: isLoading ? 8.5.w : 6.0.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius?.r ?? 9.0),
          border: Border.all(
            width: 0.1,
            color: AppColours.appWhite,
          ),
          color: isButtonColoured ? AppColours.appBlue : AppColours.appWhite,
          boxShadow: isButtonColoured
              ? [
                  BoxShadow(
                    color: AppColours.blueButtonShadowGradientOne,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: AppColours.blueButtonShadowGradientTwo,
                    spreadRadius: 0,
                    blurRadius: 2,
                  ),
                ]
              : [
                  BoxShadow(
                    color: AppColours.whiteButtonShadowGradientOne,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: AppColours.whiteButtonShadowGradientOne,
                    spreadRadius: 0,
                    blurRadius: 2,
                  ),
                ],
        ),
        child: isLoading
            ? const AppLoader(isLogoutDialogue: null)
            : buttonText!
                .txt14(
                  color: isButtonColoured == false
                      ? AppColours.neutralLight600
                      : AppColours.appWhite,
                  fontWeight: FontWeight.w500,
                )
                .alignCenter(),
      ).withHapticFeedback(
        feedbackType: feedbackType,
        onTap: onTap,
      ),
    );
  }
}
