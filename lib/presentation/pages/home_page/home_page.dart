import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_in_stanislav/core/constants/app_assets.dart';
import 'package:plant_in_stanislav/core/constants/app_icons.dart';
import 'package:plant_in_stanislav/presentation/blocs/image_picker_bloc/image_picker_bloc.dart';
import 'package:plant_in_stanislav/presentation/pages/home_page/widgets/free_premium_banner.dart';
import 'package:plant_in_stanislav/presentation/pages/home_page/widgets/home_app_bar.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_extention.dart';
import 'package:plant_in_stanislav/presentation/widgets/primary_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HomeAppBar(),
          Expanded(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Positioned(
                    top: 24,
                    left: 0,
                    right: 0,
                    child: FreePremiumBanner(onTap: () {}),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      fit: StackFit.loose,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 169,
                          width: double.infinity,
                          padding: EdgeInsets.only(bottom: 25),
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            color: context.theme.cardColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: PrimaryButton(
                            icon: AppIcons.camera,
                            text: 'Identify Coin',
                            onTap: () {
                              context.read<ImagePickerBloc>().add(PickImage());
                            },
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -94),
                          child: CoinPreviewWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CoinPreviewWidget extends StatelessWidget {
  const CoinPreviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: SizedBox.square(
              key: ValueKey(state),
              dimension: 160,
              child: switch (state) {
                ImagePickerLoaded(:final imageBytes) => Image.memory(
                  imageBytes,
                  fit: BoxFit.cover,
                ),
                _ => Image.asset(
                  AppAssets.coin,
                  fit: BoxFit.fill,
                ),
              },
            ),
          );
        },
      ),
    );
  }
}
