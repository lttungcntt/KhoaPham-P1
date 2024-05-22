part of 'home_cubit.dart';

@generate
enum HomeStatus {
  initial,
  loading,
  error,
  loaded;
}


@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default([]) List<IHome> homes,
    ApiError? error,
  }) = _HomeState;

}

extension HomeStateX on HomeState {
  HomeState get loading => copyWith(status: HomeStatus.loading);

  HomeState onError(ApiError error) => copyWith(
        status: HomeStatus.error,
        error: error,
      );

  HomeState onLoaded(List<IHome> homes) => copyWith(
        status: HomeStatus.loaded,
        homes: homes,
      );
}