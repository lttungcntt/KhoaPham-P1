import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/extensions/build_context_dialog.dart';
import '../../../../common/extensions/build_context_x.dart';
import '../../../../common/widgets/background_container.dart';
import '../../../../common/widgets/shimmer_loading_cart.dart';
import '../../application/cubit/home_cubit.dart';
import 'home_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) => state.status.maybeWhen(
        error: () {
          context.showError(state.error?.message ?? 'Error', onPressed: () {
            context.read<HomeCubit>().get();
          });
        },
        orElse: () {},
      ),
      // buildWhen: (previous, current) => current.status != previous.status,
      builder: (context, state) {
        return BackgroundContainer(
          child: RefreshIndicator(
            onRefresh: () async {
              await context.read<HomeCubit>().get(isRefresh: true);
            },
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: state.status.isLoading ? 10 : state.homes.length,
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 12.w, top: 12.w),
                child: Divider(
                  color: context.colorTheme.primaryText.withOpacity(0.4),
                  height: 1.5,
                ),
              ),
              padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: context.mediaQuery.padding.bottom + 32,
                      top: 16)
                  .w,
              itemBuilder: (context, index) => state.status.isLoading
                  ? const ShimmerLoadingCard(child: HomeCard())
                  : HomeCard(home: state.homes[index]),
            ),
          ),
        );
      },
    );
  }
}
