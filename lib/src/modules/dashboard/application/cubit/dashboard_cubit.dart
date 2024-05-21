import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:enum_annotation/enum_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/mixin/cancelable_base_bloc.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../domain/entities/dashboard.dart';
import '../../domain/interfaces/dashboard_interface.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';
part 'dashboard_cubit.g.dart';

@singleton
class DashboardCubit extends Cubit<DashboardState> with CancelableBaseBloc {
  final IDashboardRepository _repository;
  DashboardCubit(this._repository) : super(const DashboardState());

  get() async {
    emit(state.loading);
    final response = await _repository.getById(1, token: cancelToken);
    response.fold(
      (result) => emit(state.onLoaded(result)),
      (error) => emit(state.onError(error)),
    );
  }

  void setPosition(int position) => emit(state.onSetPosition(position));

  @override
  void cancel([reason]) {
    // TODO: implement cancel
    super.cancel(reason);
  }
}
