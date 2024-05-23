import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/extensions/build_context_x.dart';
import '../../../../common/utils/getit_utils.dart';
import '../../../../common/widgets/common_appbar.dart';
import '../../../home/domain/entities/home.dart';
import '../../application/cubit/home_detail_cubit.dart';
import '../widgets/home_detail_body.dart';

@RoutePage()
class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({super.key, required this.data});

  final IHome data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeDetailCubit>(),
      child: Scaffold(
        body: const HomeDetailBody(),
        appBar: CommonAppBar(
          context: context,
          title: data.name,
          leading: IconButton(
            splashColor: context.colorTheme.primary.withOpacity(0.8),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              context.router.maybePop();
            },
          ),
        ),
      ),
    );
  }
}
