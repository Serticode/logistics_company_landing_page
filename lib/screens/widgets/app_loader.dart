import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';

class AppLoader extends ConsumerWidget {
  final bool? isLogoutDialogue;
  const AppLoader({
    super.key,
    this.isLogoutDialogue,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return isLogoutDialogue != null && isLogoutDialogue == true
        ? SpinKitWaveSpinner(
            color: AppColours.appBlue,
            trackColor: AppColours.appBlue.withOpacity(0.7),
            waveColor: AppColours.appBlue.withOpacity(0.5),
            size: 85.sp,
          ).alignCenter()
        : SpinKitWaveSpinner(
            color: AppColours.appWhite,
            trackColor: AppColours.appWhite.withOpacity(0.7),
            waveColor: AppColours.appWhite.withOpacity(0.5),
            size: 85.sp,
          ).alignCenter();
  }
}
