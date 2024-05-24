import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

import '../../../../common/extensions/build_context_x.dart';
import '../../../about/presentation/pages/about_page.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../../application/cubit/dashboard_cubit.dart';

import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody>
    with TickerProviderStateMixin {
  MotionTabBarController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = MotionTabBarController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ValueKey(Localizations.localeOf(context)),
      backgroundColor: Colors.transparent,
      extendBody: false,
      body: BlocConsumer<DashboardCubit, DashboardState>(
        listenWhen: (previous, current) =>
            previous.position != current.position,
        listener: (context, state) => _controller?.index = state.position,
        builder: (context, state) {
          return TabBarView(
            controller: _controller,
            children: const [
              HomePage(),
              AboutPage(),
              SettingsPage(),
            ],
          );
        },
      ),
      bottomNavigationBar: BlocConsumer<DashboardCubit, DashboardState>(
        listenWhen: (previous, current) =>
            previous.position != current.position,
        listener: (context, state) {},
        buildWhen: (previous, current) => previous.position != current.position,
        builder: (context, state) {
          List<Map<String, IconData>> tabs = [
            {context.s.common_home: Icons.home},
            {context.s.common_about: Icons.info},
            {context.s.common_settings: Icons.settings},
          ];
          return MotionTabBar(
            textStyle: context.textTheme.titleMedium.copyWith(
              color: context.colorTheme.primaryText,
              fontSize: 15.sp,
            ),
            controller: _controller,
            tabSelectedColor: context.colorTheme.secondary,
            tabIconColor: context.colorTheme.primary,
            tabIconSelectedColor: context.colorTheme.primaryText,
            tabBarHeight: 55.w,
            tabSize: 50.w,
            tabIconSize: 20.w,
            tabBarColor: context.colorTheme.primaryContainer,
            labels: tabs.map((e) => e.keys.first).toList(),
            icons: tabs.map((e) => e.values.first).toList(),
            initialSelectedTab: tabs[state.position].keys.first,
            onTabItemSelected: (int value) =>
                context.read<DashboardCubit>().setPosition(value),
          );
        },
      ),
    );
  }
}
