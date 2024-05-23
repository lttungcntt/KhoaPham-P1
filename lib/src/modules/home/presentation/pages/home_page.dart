import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/extensions/build_context_x.dart';
import '../../../../common/utils/getit_utils.dart';
import '../../../../common/widgets/background_container.dart';
import '../../../../common/widgets/common_appbar.dart';
import '../../application/cubit/home_cubit.dart';
import '../widgets/home_body.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        title: context.s.common_home,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.white),
            splashColor: context.colorTheme.primary.withOpacity(0.5),
            onPressed: () => {},
          ),
        ],
      ),
      body: BackgroundContainer(
        child: BlocProvider(
          create: (context) => getIt<HomeCubit>(),
          child: const HomeBody(),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
