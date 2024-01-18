import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logistics_landing_page/services/controllers/destination_selector/destination_selector_controller.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';
import 'package:logistics_landing_page/shared/app_extensions.dart';
import 'package:logistics_landing_page/shared/type_defs.dart';

class FromDestinationSelector extends ConsumerWidget {
  const FromDestinationSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<DestinationCountries> items = ref
        .read(destinationControllerProvider.notifier)
        .getAllDestinationCountries;

    final destinationCountries = ref.watch(destinationControllerProvider);

    return Container(
      padding: [8.0, 18.0].symmetricPadding,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 1.2.w),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<DestinationCountries>(
          isExpanded: false,
          buttonStyleData: ButtonStyleData(
            height: 32.0,
            width: double.infinity,
            padding: [10.0, 14.0].symmetricPadding,
          ),
          menuItemStyleData: MenuItemStyleData(
            height: 60.0,
            padding: [12.0, 21.0].symmetricPadding,
          ),

          //!
          dropdownStyleData: DropdownStyleData(
            maxHeight: 350.0,
            elevation: 0,
            openInterval: const Interval(0.1, 0.6, curve: Curves.easeIn),
            width: 391,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: AppColours.appGrey50,
            ),
            offset: Offset(-10.0.w, 250.0.h),
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(12.0),
              thickness: MaterialStateProperty.all(2),
              thumbVisibility: MaterialStateProperty.all(true),
            ),
          ),

          customButton: Row(
            children: [
              Expanded(
                child: destinationCountries.name.txt(
                  color: AppColours.appGrey600,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                width: 39.0,
                height: 39.0,
                child: Icon(
                  Icons.arrow_downward,
                  color: AppColours.appGrey900,
                ),
              ),
            ],
          ),

          //!
          items: items
              .map(
                (DestinationCountries item) =>
                    DropdownMenuItem<DestinationCountries>(
                  value: item,
                  child: item.name.txt14(
                    color: AppColours.appGrey500,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
              .toList(),

          //!
          value: destinationCountries,
          onChanged: (DestinationCountries? newDestinationCountries) => ref
              .read(destinationControllerProvider.notifier)
              .setDestinationCountries(
                destinationCountries:
                    newDestinationCountries ?? DestinationCountries.nigeria,
              ),
        ),
      ),
    );
  }
}
