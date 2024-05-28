import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/extensions/build_context_dialog.dart';
import '../../../../common/extensions/build_context_x.dart';
import '../../../../common/extensions/optional_x.dart';
import '../../../../common/widgets/background_container.dart';
import '../../../../common/widgets/custom_slider.dart';
import '../../../../common/widgets/loading_text_empty.dart';
import '../../../../common/widgets/material_ink_well.dart';
import '../../../../common/widgets/shimmer_loading_cart.dart';
import '../../application/cubit/home_detail_cubit.dart';

class HomeDetailBody extends StatelessWidget {
  const HomeDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        height: context.mediaQuery.size.height,
        child: BlocConsumer<HomeDetailCubit, HomeDetailState>(
          listener: (context, state) => state.status.maybeWhen(
            error: () {
              context.showError(state.error?.message ?? 'Error', onPressed: () {
                context.read<HomeDetailCubit>().get();
              });
            },
            orElse: () {},
          ),
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async {
                await context.read<HomeDetailCubit>().get();
              },
              child: ShimmerLoadingCard(
                  isLoading: state.status.isLoading,
                  child: Column(children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomSlider(
                              listImage: state.data?.photos ?? [],
                            ),
                            _ItemListtitle(
                              icon: Icons.email,
                              title: 'Email',
                              subtitle: state.data?.email ?? '',
                            ),
                            _ItemListtitle(
                              icon: Icons.phone,
                              title: 'Phone Number',
                              subtitle: state.data?.phoneNumber ?? '',
                            ),
                            _ItemListtitle(
                              icon: Icons.cake,
                              title: 'Birth Date',
                              subtitle:
                                  state.data?.birthDate?.toIso8601String() ??
                                      '',
                            ),
                            _ItemListtitle(
                              icon: Icons.location_on,
                              title: 'Address',
                              subtitle: state.data?.address ?? '',
                            ),
                            _ItemListtitle(
                              icon: Icons.flag,
                              title: 'Country',
                              subtitle: state.data?.country ?? '',
                            ),
                            _ItemListtitle(
                              icon: Icons.home,
                              title: 'City',
                              subtitle: state.data?.city ?? '',
                            ),
                            _ItemListtitle(
                              icon: Icons.info,
                              title: 'Introduction',
                              subtitle: state.data?.info ?? '',
                            ),
                            _ItemListtitle(
                              icon: Icons.info,
                              title: 'Introduction',
                              subtitle: state.data?.info ?? '',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(
                                top: 12,
                                left: 24,
                                right: 24,
                                bottom: context.mediaQuery.padding.bottom + 20)
                            .w,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Handle button press
                          },
                          icon: Icon(Icons.contact_phone,
                              color: context.colorTheme
                                  .primaryText), // Use the contact_phone icon
                          label: Padding(
                            padding: EdgeInsets.only(top: 12.w, bottom: 12.w),
                            child: Text(
                              'Contact Us',
                              style: context.textTheme.bold.copyWith(
                                  color: context.colorTheme.primaryText),
                            ),
                          ),
                          style: ButtonStyle(
                            overlayColor: WidgetStateProperty.all(
                                context.colorTheme.primary.withOpacity(0.8)),
                            backgroundColor: WidgetStateProperty.all(
                                context.colorTheme.primaryContainer),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.0),
                                side: BorderSide(
                                    color: context.colorTheme.primaryText,
                                    width: 1.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ])),
            );
          },
        ));
  }

  Widget _Intro(HomeDetailState state) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomSlider(
            listImage: state.data?.photos ?? [],
          ),
          _ItemListtitle(
            icon: Icons.email,
            title: 'Email',
            subtitle: state.data?.email ?? '',
          ),
          _ItemListtitle(
            icon: Icons.phone,
            title: 'Phone Number',
            subtitle: state.data?.phoneNumber ?? '',
          ),
          _ItemListtitle(
            icon: Icons.cake,
            title: 'Birth Date',
            subtitle: state.data?.birthDate?.toIso8601String() ?? '',
          ),
          _ItemListtitle(
            icon: Icons.location_on,
            title: 'Address',
            subtitle: state.data?.address ?? '',
          ),
          _ItemListtitle(
            icon: Icons.flag,
            title: 'Country',
            subtitle: state.data?.country ?? '',
          ),
          _ItemListtitle(
            icon: Icons.home,
            title: 'City',
            subtitle: state.data?.city ?? '',
          ),
          _ItemListtitle(
            icon: Icons.info,
            title: 'Introduction',
            subtitle: state.data?.info ?? '',
          ),
          _ItemListtitle(
            icon: Icons.info,
            title: 'Introduction',
            subtitle: state.data?.info ?? '',
          ),
        ],
      ),
    );
  }
}

class _ItemListtitle extends StatelessWidget {
  const _ItemListtitle({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return MaterialInkWell(
      onTap: () {},
      child: ListTile(
        isThreeLine: true,
        leading: Icon(
          icon,
          color: context.colorTheme.primaryText,
        ),
        title: Text(
          title,
          style: context.textTheme.titleLarge.copyWith(
            fontSize: 18.sp,
            color: context.colorTheme.primaryText,
          ),
        ),
        subtitle: subtitle.isNullOrEmpty
            ? LoadingTextEmpty(
                textStyle: context.textTheme.bodyMedium.copyWith(
                color: context.colorTheme.primaryContainer,
              ))
            : Text(
                subtitle,
                style: context.textTheme.bodyMedium.copyWith(
                  color: context.colorTheme.primaryText,
                ),
              ),
      ),
    );
  }
}
