import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logistics_landing_page/screens/widgets/app_button.dart';
import 'package:logistics_landing_page/services/controllers/app_bar/app_bar_controller.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/app_images.dart';
import 'package:logistics_landing_page/shared/app_texts.dart';

class TheAppBar extends ConsumerWidget {
  const TheAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(appBarControllerProvider);

    return Container(
      height: 80.0,
      padding: [32.0, 120.0].symmetricPadding,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColours.appGrey600.withOpacity(0.1),
          ),
        ),
      ),
      child: Row(
        children: [
          //! IMAGE
          Image.asset(
            AppAssets.appLogo,
            filterQuality: FilterQuality.high,
          ),
          //! NAME
          SvgPicture.asset(
            AppAssets.appLogoText,
          ),

          //! SPACER
          const Spacer(),

          //! PAGES
          ...AppBarPages.values.map(
            (page) => page.name
                .txt16(
                  fontWeight: FontWeight.w500,
                  color: currentPage == page
                      ? AppColours.appGrey900
                      : AppColours.appGrey600,
                )
                .onTap(
                  onTap: () => ref
                      .read(appBarControllerProvider.notifier)
                      .setCurrentPage(selectedPage: page),
                )
                .generalHorizontalPadding,
          ),

          //! SPACER
          const Spacer(),

          //! BUTTONS
          RegularButton(
            onTap: () {},
            buttonText: AppTexts.login,
            isLoading: false,
            isButtonColoured: false,
          ),

          //!
          21.0.sizedBoxWidth,

          RegularButton(
            onTap: () {},
            buttonText: AppTexts.signUp,
            isLoading: false,
            isButtonColoured: true,
          )
        ],
      ),
    );
  }
}
