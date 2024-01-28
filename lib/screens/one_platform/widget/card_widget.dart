import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';

class CardWidget extends ConsumerWidget {
  final double? width;
  final double? height;
  final String? title;
  final String? subtitle;
  final String image;
  final bool isImage;
  const CardWidget({
    super.key,
    required this.width,
    required this.height,
    required this.isImage,
    this.title,
    this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: height,
      width: width,
      padding: [12.0, 21.0].symmetricPadding,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColours.cardBorderColour,
        ),
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColours.gradientOne,
            AppColours.gradientTwo,
            AppColours.gradientThree,
            AppColours.gradientFour,
          ],
        ),
      ),

      //!
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //! IMAGE
          isImage
              ? Image.asset(image).alignCenter()
              : SvgPicture.asset(
                  image,
                ).alignCenter(),

          //!
          51.sizedBoxHeight,

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //!
              title!.txt(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColours.appGrey900,
              ),

              8.0.sizedBoxHeight,

              //!
              subtitle!.txt(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColours.appGrey600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
