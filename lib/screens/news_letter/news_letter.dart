import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistics_landing_page/screens/widgets/app_button.dart';
import 'package:logistics_landing_page/screens/widgets/text_form_fields.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_texts.dart';

class NewsLetter extends ConsumerWidget {
  const NewsLetter({super.key});
  static final TextEditingController _newsLetterController =
      TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 374,
      width: double.infinity,
      padding: [32.0, 120.0].symmetricPadding,
      color: AppColours.appGrey50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTexts.signUp.txt(
            fontSize: 36,
            fontWeight: FontWeight.w600,
            color: AppColours.appGrey900,
          ),

          32.0.sizedBoxHeight,

          AppTexts.beTheFirstToKnow.txt(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColours.appGrey600,
          ),

          32.0.sizedBoxHeight,

          //!
          SizedBox(
            width: 476,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    isForPassword: false,
                    hint: "Enter your email",
                    controller: _newsLetterController,
                  ),
                ),

                21.0.sizedBoxWidth,

                //!
                RegularButton(
                  onTap: () {},
                  buttonText: "Subscribe",
                  isLoading: false,
                  isButtonColoured: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
