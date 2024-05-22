import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/utils/getit_utils.dart';
import '../../application/cubit/home_detail_cubit.dart';
import '../widgets/home_detail_body.dart';

@RoutePage()
class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> getIt<HomeDetailCubit>(),
      child: Scaffold(
        appBar: AppBar(),
        body: const HomeDetailBody(),
      ),
    );
  }
}
