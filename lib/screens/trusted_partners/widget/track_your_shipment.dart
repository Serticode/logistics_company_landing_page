import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistics_landing_page/screens/widgets/app_button.dart';
import 'package:logistics_landing_page/screens/widgets/text_form_fields.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_texts.dart';

class TrackYourShipment extends ConsumerWidget {
  const TrackYourShipment({super.key});
  static final TextEditingController _trackingNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: [0.0, 21.0].symmetricPadding,
      child: Container(
        height: 125.0,
        width: 596.33,
        padding: [8.0, 24.0].symmetricPadding,
        decoration: BoxDecoration(
          color: AppColours.containerBGColour.withOpacity(0.5),
          border: Border.all(
            width: 1.0,
            color: AppColours.borderColour,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Track your shipment".txt16(
              fontWeight: FontWeight.w500,
              color: AppColours.appGrey900,
            ),

            //!
            18.0.sizedBoxHeight,

            //!
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    isForPassword: false,
                    hint: "Tracking Number",
                    controller: _trackingNumberController,
                  ),
                ),

                //!
                12.0.sizedBoxWidth,

                //! BUTTON
                RegularButton(
                  onTap: () {},
                  buttonText: AppTexts.track,
                  isLoading: false,
                  isButtonColoured: true,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
