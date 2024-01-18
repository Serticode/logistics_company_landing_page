import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_images.dart';

class OurTrustedPartners extends ConsumerWidget {
  const OurTrustedPartners({super.key});

  static final List<String> _partners = [
    AppAssets.boltShift,
    AppAssets.lightBox,
    AppAssets.featherDev,
    AppAssets.spherule,
    AppAssets.globalBank,
    AppAssets.nietzsche,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        //! TITLE
        "Our Trusted Partners".txt(
          textAlign: TextAlign.center,
          fontSize: 30.0,
          fontWeight: FontWeight.w500,
          color: AppColours.appGrey900,
        ),

        12.0.sizedBoxHeight,

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _partners
                .map(
                  (partner) => Padding(
                    padding: [2.0, 6.0].symmetricPadding,
                    child: Transform.scale(
                      scale: 0.8,
                      child: Image(image: Svg(partner)),
                    ),
                  ).fadeInFromBottom(
                    delay: Duration(
                      milliseconds:
                          (300 * (_partners.indexOf(partner) + 0.8)).toInt(),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
