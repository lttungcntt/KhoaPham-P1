import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/extensions/build_context_x.dart';
import '../../application/cubit/home_cubit.dart';
import 'home_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return Container(
          color: context.color.primaryContainer,
          child: RefreshIndicator(
            onRefresh: () async {
              await context.read<HomeCubit>().get(isRefresh: true);
            },
            child: ListView.separated(
              itemCount: state.homes.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: context.mediaQuery.padding.bottom + 32,
                      top: context.mediaQuery.padding.top)
                  .w,
              itemBuilder: (context, index) =>
                  HomeCard(home: state.homes[index]),
            ),
          ),
        );
      },
    );
  }
}
