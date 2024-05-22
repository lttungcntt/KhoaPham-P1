part of 'home_detail_cubit.dart';

@generate
enum HomeDetailStatus {
  initial,
  loading,
  error,
  loaded;
}


@freezed
class HomeDetailState with _$HomeDetailState {
  const HomeDetailState._();

  const factory HomeDetailState({
    @Default(HomeDetailStatus.initial) HomeDetailStatus status,
    IHomeDetail? data,
    ApiError? error,
  }) = _HomeDetailState;

}

extension HomeDetailStateX on HomeDetailState {
  HomeDetailState get loading => copyWith(status: HomeDetailStatus.loading);

  HomeDetailState onError(ApiError error) => copyWith(
        status: HomeDetailStatus.error,
        error: error,
      );

  HomeDetailState onLoaded(IHomeDetail data) => copyWith(
        status: HomeDetailStatus.loaded,
        data: data,
      );
}