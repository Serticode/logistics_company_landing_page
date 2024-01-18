enum AuthResult { success, failure, noResult }

enum ConnectivityStatus { wifi, mobile, online, offline }

typedef UserId = String;
typedef UserDisplayName = String;
typedef UserFullName = String;
typedef UserProfileImageType = String;
typedef IsLoading = bool;
typedef MeetingUploaded = bool;
typedef MeetingDeleted = bool;

enum NotificationType { success, failure, info }

enum AppHapticFeedbackType {
  lightImpact,
  mediumImpact,
  heavyImpact,
  selectionClick,
  vibrate,
}

enum FileType { image }

enum DestinationCountries {
  argentina(name: "Argentina"),
  brazil(name: "Brazil"),
  canada(name: "Canada"),
  china(name: "China"),
  france(name: "France"),
  italy(name: "Italy"),
  nigeria(name: "Nigeria"),
  northKorea(name: "North Korea"),
  russia(name: "Russia"),
  southAfrica(name: "South Africa"),
  uk(name: "Uk"),
  usa(name: "Usa");

  final String name;
  const DestinationCountries({
    required this.name,
  });
}
