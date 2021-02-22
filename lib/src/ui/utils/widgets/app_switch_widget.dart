import 'dart:io';

import 'package:estudo_app/src/ui/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSwitchWidget extends StatelessWidget {
  final Function onChanged;
  final bool value;

  const AppSwitchWidget({
    @required this.value,
    this.onChanged,
  }) : super();

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoSwitch(
        activeColor: AppColors.primaryColor,
        value: value,
        onChanged: onChanged,
      );
    }
    return Switch(
      activeColor: AppColors.primaryColor,
      value: value,
      onChanged: onChanged,
    );
  }
}
