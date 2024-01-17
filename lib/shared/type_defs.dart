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
