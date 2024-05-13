import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_images.dart';
import 'package:logistics_landing_page/shared/app_texts.dart';

class RightSide extends ConsumerWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 551,
      width: 650.0,
      padding: [0.0, 21.0].symmetricPadding,

      //!
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTexts.whereDistance.txt16(
            fontWeight: FontWeight.w500,
            color: AppColours.appGrey700,
          ),

          12.0.sizedBoxHeight,

          //!
          AppTexts.seamlessGlobalShipping.txt(
            fontSize: 48,
            fontWeight: FontWeight.w600,
            color: AppColours.appGrey900,
          ),

          12.0.sizedBoxHeight,

          //!
          AppTexts.seamlessGlobalShippingRider.txt(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColours.appGrey700,
          ),

          45.0.sizedBoxHeight,

          SvgPicture.asset(
            AppAssets.horizontalLine,
            // ignore: deprecated_member_use
            color: AppColours.appGrey300,
          ),

          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AppAssets.globeIcon,
                  ),

                  12.0.sizedBoxWidth,

                  //!
                  SizedBox(
                    height: 132,
                    width: 234.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //!
                        AppTexts.presentIn.txt(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColours.appGrey900,
                        ),

                        //!
                        AppTexts.presentInRider.txt(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColours.appGrey600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //!
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AppAssets.boltIcon,
                  ),

                  12.0.sizedBoxWidth,

                  //!
                  SizedBox(
                    height: 132,
                    width: 234.0,
                    child: Column(
                      children: [
                        //!
                        AppTexts.presentIn.txt(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColours.appGrey900,
                        ),

                        //!
                        AppTexts.presentInRider.txt(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColours.appGrey600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          32.0.sizedBoxHeight,

          //!
          SvgPicture.asset(
            AppAssets.horizontalLine,
            // ignore: deprecated_member_use
            color: AppColours.appGrey300,
          ),
        ],
      ),
    );
  }
}
