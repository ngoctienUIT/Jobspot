part of 'setting_cubit.dart';

class SettingState extends Equatable {
  const SettingState({
    required this.isLoading,
    required this.isLogout,
    required this.isNotification,
    required this.isVietNam,
    this.error,
  });

  final bool isLoading;
  final bool isLogout;
  final bool isNotification;
  final bool isVietNam;
  final String? error;

  factory SettingState.ds() {
    final isNotification = PrefsUtils.isNotification;
    return SettingState(
      isLoading: false,
      isLogout: false,
      isNotification: isNotification,
      isVietNam: PrefsUtils.isVietnamese ?? true,
    );
  }

  SettingState copyWith({
    bool isLoading = false,
    bool isLogout = false,
    bool? isNotification,
    bool? isVietNam,
    String? error,
  }) {
    return SettingState(
      isLoading: isLoading,
      isNotification: isNotification ?? this.isNotification,
      isVietNam: isVietNam ?? this.isVietNam,
      error: error,
      isLogout: isLogout,
    );
  }

  @override
  List<Object?> get props =>
      [isNotification, isVietNam, error, isLoading, isLogout];
}
