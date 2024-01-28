import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:logistics_landing_page/screens/seamless_global_shipping/widget/left_side.dart';
import 'package:logistics_landing_page/screens/seamless_global_shipping/widget/right_side.dart';
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
      padding: [32.0, 32.0].symmetricPadding,
      decoration: const BoxDecoration(
        color: AppColours.appWhite,
        image: DecorationImage(
          image: Svg(
            AppAssets.verticalLines,
          ),
          fit: BoxFit.fill,
        ),
      ),

      //!
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftSide(),

          //!
          RightSide()
        ],
      ),
    );
  }
}
