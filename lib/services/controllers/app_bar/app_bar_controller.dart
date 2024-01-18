import 'package:flutter_riverpod/flutter_riverpod.dart';

final appBarControllerProvider =
    StateNotifierProvider<AppBarController, AppBarPages>(
  (ref) => AppBarController(),
);

enum AppBarPages {
  home(name: "Home"),
  track(name: "Track"),
  ship(name: "Ship"),
  about(name: "About"),
  blog(name: "Blog");

  final String name;

  const AppBarPages({required this.name});
}

//!
//! CONTROLLER
class AppBarController extends StateNotifier<AppBarPages> {
  AppBarController() : super(AppBarPages.home);

  void setCurrentPage({
    required AppBarPages selectedPage,
  }) =>
      state = selectedPage;
}
