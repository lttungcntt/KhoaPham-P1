import 'package:flutter/material.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../generated/colors.gen.dart';
import '../../../../common/extensions/build_context_x.dart';
import '../../../about/presentation/pages/about_page.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../../application/cubit/dashboard_cubit.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (previous, current) => previous.position != current.position,
      builder: (context, state) {
        return Scaffold(
            body: switch (state.position) {
              0 => const HomePage(),
              1 => const AboutPage(),
              2 => const SettingsPage(),
              _ => const SizedBox.shrink(),
            },
            bottomNavigationBar: CubertoBottomBar(
              inactiveIconColor: ColorName.primary,
              tabStyle: CubertoTabStyle.styleNormal,
              selectedTab: state.position,
              tabs: [
                TabData(
                  iconData: Icons.home,
                  title: context.s.common_home,
                ),
                TabData(
                  iconData: Icons.info,
                  title: context.s.common_about,
                ),
                TabData(
                  iconData: Icons.settings,
                  title: context.s.common_settings,
                ),
              ],
              onTabChangedListener: (position, title, color) =>
                  context.read<DashboardCubit>().setPosition(position),
            ));
      },
    );
  }
}
