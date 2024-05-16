part of 'dashboard_cubit.dart';

@generate
enum DashboardStatus {
  initial,
  loading,
  error,
  loaded;
}

@freezed
class DashboardState with _$DashboardState {
  const DashboardState._();

  const factory DashboardState({
    @Default(DashboardStatus.initial) DashboardStatus status,
    IDashboard? data,
    ApiError? error,
    @Default(0) int position,
  }) = _DashboardState;
}

extension DashboardStateX on DashboardState {
  DashboardState get loading => copyWith(status: DashboardStatus.loading);

  DashboardState onError(ApiError error) => copyWith(
        status: DashboardStatus.error,
        error: error,
      );

  DashboardState onLoaded(IDashboard data) => copyWith(
        status: DashboardStatus.loaded,
        data: data,
      );

  DashboardState onSetPosition(int position) => copyWith(position: position);
}
