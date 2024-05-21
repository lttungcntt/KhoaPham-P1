import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

import '../../../../common/extensions/build_context_x.dart';
import '../../../../common/extensions/optional_x.dart';
import '../../../../core/application/cubits/lang/lang_cubit.dart';
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
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<DashboardBody> {
  // TabController _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    if (_motionTabBarController.isNotNull) {
      _motionTabBarController!.animateTo(0);
    }
  }

  @override
  void dispose() {
    super.dispose();

    // _tabController.dispose();
    _motionTabBarController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    List<Map<String, IconData>> tabs = [
      {context.s.common_home: Icons.home},
      {context.s.common_about: Icons.info},
      {context.s.common_settings: Icons.settings},
    ];
    return Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: false,
        body: BlocBuilder<LangCubit, Locale>(
          builder: (context, state) {
            return TabBarView(
              controller: _motionTabBarController,
              children: [
                HomePage(key: UniqueKey()),
                AboutPage(key: UniqueKey()),
                SettingsPage(key: UniqueKey()),
              ],
            );
          },
        ),
        bottomNavigationBar: BlocConsumer<DashboardCubit, DashboardState>(
          listenWhen: (previous, current) =>
              previous.position != current.position,
          listener: (context, state) {
            _motionTabBarController!.index = state.position;
          },
          //
          buildWhen: (previous, current) =>
              previous.position != current.position,
          builder: (context, state) {
            return MotionTabBar(
              textStyle: context.textTheme.titleMedium.copyWith(
                color: context.color.tertiary,
                fontSize: 15.sp,
              ),
              tabSelectedColor: context.color.secondary,
              tabIconColor: context.color.tertiary,
              tabIconSelectedColor: context.color.tertiary,
              tabBarHeight: 55.w,
              tabSize: 50.w,
              tabIconSize: 20.w,
              tabBarColor: context.color.primaryContainer,
              controller: _motionTabBarController,
              labels: tabs.map((e) => e.keys.first).toList(),
              icons: tabs.map((e) => e.values.first).toList(),
              initialSelectedTab: tabs[0].keys.first,
              onTabItemSelected: (int value) =>
                  context.read<DashboardCubit>().setPosition(value),
            );
          },
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
