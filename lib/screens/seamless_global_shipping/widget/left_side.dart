import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:logistics_landing_page/screens/seamless_global_shipping/widget/destination_selector.dart';
import 'package:logistics_landing_page/screens/seamless_global_shipping/widget/to_destination_selector.dart';
import 'package:logistics_landing_page/screens/widgets/app_button.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_images.dart';

class LeftSide extends ConsumerWidget {
  const LeftSide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 551,
      width: 624.0,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: Svg(
            AppAssets.map,
          ),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: AppColours.appGrey200),
      ),
      child: Container(
        height: 420,
        width: 646,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: Svg(
              AppAssets.mapLines,
            ),
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          width: 440,
          height: 376,
          padding: [32.0, 21.0].symmetricPadding,
          decoration: BoxDecoration(
            color: AppColours.appWhite,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: AppColours.appGrey200,
            ),
          ),

          //!
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "From".txt(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColours.appGrey700,
              ),

              21.0.sizedBoxHeight,

              const FromDestinationSelector(),

              21.0.sizedBoxHeight,

              //! SWAP ICON
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: Svg(
                      AppAssets.swap,
                    ),
                    scale: 1.5,
                  ),
                  shape: BoxShape.circle,
                ),
              ).alignCenter(),

              21.0.sizedBoxHeight,

              "To".txt(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColours.appGrey700,
              ),

              21.0.sizedBoxHeight,

              const ToDestinationSelector(),

              32.0.sizedBoxHeight,

              //!
              SizedBox(
                width: 115,
                child: RegularButton(
                  onTap: () {},
                  buttonText: "Send Shipment",
                  isLoading: false,
                  isButtonColoured: true,
                ),
              ).alignCenter()
            ],
          ),
        ).alignCenter(),
      ),
    );
  }
}
