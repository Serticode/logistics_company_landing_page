import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:logistics_landing_page/screens/trusted_partners/widget/our_trusted_partners.dart';
import 'package:logistics_landing_page/screens/trusted_partners/widget/track_your_shipment.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_images.dart';
import 'package:logistics_landing_page/shared/app_texts.dart';

class TrustedPartnersContainer extends ConsumerWidget {
  const TrustedPartnersContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: Svg(
            AppAssets.trustedPartnersContainerBackDrop,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColours.bgGradientOne,
            AppColours.bgGradientTwo,
            AppColours.bgGradientThree,
          ],
        ),
      ),

      //! CONTAINER CARRYING STRAIGHT LINES
      child: Container(
        padding: [0.0, 21.0].symmetricPadding,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: Svg(
              AppAssets.verticalLines,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            150.0.sizedBoxHeight,

            //!
            const Text.rich(
              TextSpan(
                text: "Delivering Confidence, One  \n",
                children: <TextSpan>[
                  TextSpan(
                    text: "Shipment ",
                    style: TextStyle(color: AppColours.appBlue),
                  ),
                  TextSpan(text: "at a Time"),
                ],
              ),
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 60,
                color: AppColours.appGrey900,
                height: 1.2,
              ),
            ).fadeInFromBottom(),

            //!
            21.0.sizedBoxHeight,

            //!
            AppTexts.firstPageRider
                .txt(
                  textAlign: TextAlign.center,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColours.appGrey600,
                  maxLines: 2,
                  height: 1.3,
                )
                .fadeInFromBottom(
                  delay: const Duration(milliseconds: 500),
                ),

            //!
            90.0.sizedBoxHeight,

            //!
            const TrackYourShipment(),

            //!
            6.0.sizedBoxHeight,

            //! SHIP IMAGE
            Padding(
              padding: [21.0, 120.0].symmetricPadding,
              child: Container(
                width: 1392,
                height: 617,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppAssets.shipPicture,
                    ),
                  ),
                ),
                child: Transform.scale(
                  scale: 0.5,
                  child: const Image(
                    filterQuality: FilterQuality.high,
                    image: Svg(AppAssets.playIcon),
                  ),
                ),
              ),
            ),

            //!
            const OurTrustedPartners(),

            //!
            45.0.sizedBoxHeight,
          ],
        ),
      ),
    );
  }
}
