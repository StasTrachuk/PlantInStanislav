import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_in_stanislav/core/constants/app_icons.dart';
import 'package:plant_in_stanislav/presentation/blocs/image_picker_bloc/image_picker_bloc.dart';
import 'package:plant_in_stanislav/presentation/theme/theme_extention.dart';

class PickCoinButton extends StatelessWidget {
  const PickCoinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -29),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          context.read<ImagePickerBloc>().add(PickImage());
        },
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: context.theme.iconButtonPrimary.withValues(alpha: 0.4),
            shape: BoxShape.circle,
          ),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: context.theme.iconButtonPrimary,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(
              AppIcons.camera,
              size: 35.5,
              color: context.theme.iconTheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
