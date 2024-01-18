import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistics_landing_page/shared/type_defs.dart';

final destinationControllerProvider =
    StateNotifierProvider<DestinationController, DestinationCountries>(
  (ref) => DestinationController(),
);

//!
//! CONTROLLER
class DestinationController extends StateNotifier<DestinationCountries> {
  DestinationController() : super(DestinationCountries.usa);

  setDestinationCountries({
    required DestinationCountries destinationCountries,
  }) =>
      state = destinationCountries;

  List<DestinationCountries> get getAllDestinationCountries =>
      DestinationCountries.values;
}
