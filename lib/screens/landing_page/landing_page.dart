import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistics_landing_page/screens/footer/footer.dart';
import 'package:logistics_landing_page/screens/news_letter/news_letter.dart';
import 'package:logistics_landing_page/screens/seamless_global_shipping/seamless_global_shipping.dart';
import 'package:logistics_landing_page/screens/trusted_partners/trusted_partners.dart';
import 'package:logistics_landing_page/screens/widgets/app_bar.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: TheAppBar(),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            //!
            TrustedPartnersContainer(),

            SizedBox(
              height: 114,
              width: double.infinity,
            ),

            //!
            SeamlessGlobalShipping(),

            //!
            NewsLetter(),

            //!
            Footer()
          ],
        ),
      ),
    );
  }
}
