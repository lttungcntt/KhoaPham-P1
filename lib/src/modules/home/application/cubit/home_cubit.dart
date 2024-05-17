import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:enum_annotation/enum_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/mixin/cancelable_base_bloc.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../domain/entities/home.dart';
import '../../domain/interfaces/home_interface.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';
part 'home_cubit.g.dart';

@injectable
class HomeCubit extends Cubit<HomeState> with CancelableBaseBloc {
  final IHomeRepository _repository;
  HomeCubit(this._repository) : super(const HomeState());

  get() async {
    emit(state.loading);
    final response = await _repository.getById(1, token: cancelToken);
    response.fold(
      (result) => emit(state.onLoaded(result)),
      (error) => emit(state.onError(error)),
    );
  }
}