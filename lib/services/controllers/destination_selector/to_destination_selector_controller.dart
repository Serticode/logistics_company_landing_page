import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistics_landing_page/shared/type_defs.dart';

final toDestinationControllerProvider =
    StateNotifierProvider<ToDestinationController, DestinationCountries>(
  (ref) => ToDestinationController(),
);

//!
//! CONTROLLER
class ToDestinationController extends StateNotifier<DestinationCountries> {
  ToDestinationController() : super(DestinationCountries.nigeria);

  setDestinationCountries({
    required DestinationCountries destinationCountries,
  }) =>
      state = destinationCountries;

  List<DestinationCountries> get getAllDestinationCountries =>
      DestinationCountries.values;
}
