import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';

class FooterRightSide extends ConsumerWidget {
  const FooterRightSide({super.key});
  static final List<String> _findOutMore = [
    "About",
    "Faqs",
    "Privacy Policy",
    "Return Policy",
  ];

  static final List<String> _inform = [
    "Information",
    "Forum",
    "Our Designers",
    "Returns",
    "Legals",
  ];

  static final List<String> _connect = [
    "Instagram",
    "Twitter",
    "Facebook",
    "Medium",
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: [60.0, 12.0].symmetricPadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //! FIRST
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              42.0.sizedBoxHeight,
              "Find Out More".txt(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColours.appGrey900,
              ),
              32.0.sizedBoxHeight,
              Column(
                children: _findOutMore
                    .map(
                      (item) => Padding(
                        padding: [12, 4].symmetricPadding,
                        child: item.txt(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColours.appGrey600,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),

          //!
          32.0.sizedBoxWidth,

          //! SECOND
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              42.0.sizedBoxHeight,
              "Inform".txt(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColours.appGrey900,
              ),
              32.0.sizedBoxHeight,
              Column(
                children: _inform
                    .map(
                      (item) => Padding(
                        padding: [12, 4].symmetricPadding,
                        child: item.txt(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColours.appGrey600,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),

          //!
          32.0.sizedBoxWidth,

          //! THIRD
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              42.0.sizedBoxHeight,
              "Connect".txt(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColours.appGrey900,
              ),
              32.0.sizedBoxHeight,
              Column(
                children: _connect
                    .map(
                      (item) => Padding(
                        padding: [12, 4].symmetricPadding,
                        child: item.txt(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColours.appGrey600,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    ).alignCenter();
  }
}
