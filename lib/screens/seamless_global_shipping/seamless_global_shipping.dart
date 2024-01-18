import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:logistics_landing_page/screens/seamless_global_shipping/widget/left_side.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_images.dart';

class SeamlessGlobalShipping extends ConsumerWidget {
  const SeamlessGlobalShipping({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 4096,
      width: 1512,
      padding: [32.0, 120.0].symmetricPadding,
      decoration: const BoxDecoration(
        color: AppColours.appWhite,
        image: DecorationImage(
          image: Svg(
            AppAssets.verticalLines,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LeftSide(),

          //!
          12.0.sizedBoxWidth,

          //!
          Container(
            height: 551,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: Svg(
                  AppAssets.map,
                ),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1.2, color: AppColours.appGrey50),
            ),
          ),
        ],
      ),
    );
  }
}
