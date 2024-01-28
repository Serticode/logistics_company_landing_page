import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistics_landing_page/screens/one_platform/widget/card_widget.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_images.dart';
import 'package:logistics_landing_page/shared/app_texts.dart';

class OnePlatform extends ConsumerWidget {
  const OnePlatform({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        AppTexts.ourFeatures.txt(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColours.appGrey700,
        ),

        12.0.sizedBoxHeight,

        //!
        AppTexts.onePlatform.txt(
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: AppColours.appGrey900,
        ),

        12.0.sizedBoxHeight,

        //!
        AppTexts.onePlatformRider.txt(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColours.appGrey700,
        ),

        150.0.sizedBoxHeight,

        SizedBox(
          height: 1000,
          width: 1312,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CardWidget(
                    width: 516,
                    height: 470,
                    title: AppTexts.onePlatformCardTitleOne,
                    subtitle: AppTexts.onePlatformCardSubtitleOne,
                    image: AppAssets.trackingCode,
                    isImage: false,
                  ),
                  CardWidget(
                    width: 756,
                    height: 470,
                    title: AppTexts.onePlatformCardTitleTwo,
                    subtitle: AppTexts.onePlatformCardSubtitleTwo,
                    image: AppAssets.manCarryingBoxImage,
                    isImage: true,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CardWidget(
                    width: 756,
                    height: 470,
                    title: AppTexts.onePlatformCardTitleThree,
                    subtitle: AppTexts.onePlatformCardSubtitleThree,
                    image: AppAssets.graph,
                    isImage: false,
                  ),
                  CardWidget(
                    width: 516,
                    height: 470,
                    title: AppTexts.onePlatformCardTitleFour,
                    subtitle: AppTexts.onePlatformCardSubtitleFour,
                    image: AppAssets.truckImage,
                    isImage: true,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
