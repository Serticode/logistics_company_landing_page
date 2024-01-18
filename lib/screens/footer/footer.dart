import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistics_landing_page/screens/footer/widget/left_side.dart';
import 'package:logistics_landing_page/screens/footer/widget/right_side.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';

class Footer extends ConsumerWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 343,
      width: 1512,
      decoration: const BoxDecoration(
        color: AppColours.appWhite,
      ),
      child: Row(
        children: [
          const Expanded(child: FooterLeftSide()),

          //!
          32.0.sizedBoxWidth,

          const Expanded(child: FooterRightSide()),
        ],
      ),
    );
  }
}
