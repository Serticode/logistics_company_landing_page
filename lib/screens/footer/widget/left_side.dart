import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_images.dart';
import 'package:logistics_landing_page/shared/app_texts.dart';

class FooterLeftSide extends ConsumerWidget {
  const FooterLeftSide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: [32.0, 120.0].symmetricPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //!
          Row(
            children: [
              const Image(
                image: AssetImage(AppAssets.appLogo),
              ),

              //!
              SvgPicture.asset(
                AppAssets.appLogoText,
              )
            ],
          ),

          50.0.sizedBoxHeight,

          //!
          AppTexts.leftFooterText.toTitleCase().txt(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: AppColours.appGrey600,
                height: 1.8,
              ),
        ],
      ),
    );
  }
}
