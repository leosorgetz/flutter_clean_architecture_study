import 'package:estudo_app/src/ui/utils/constants/app_colors.dart';
import 'package:estudo_app/src/ui/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppButtonWidget extends StatelessWidget {
  final Color borderColor;
  final Color color;
  final String text;
  final Function()? onPressed;
  final EdgeInsetsGeometry padding;

  final TextStyle textStyle;

  const AppButtonWidget({
    required this.text,
    this.padding = const EdgeInsets.all(10),
    this.onPressed,
    this.color = AppColors.primaryColor,
    this.borderColor = Colors.transparent,
    this.textStyle = AppTextStyle.textWhite,
  }) : super();

  @override
  Widget build(BuildContext context) => MaterialButton(
        key: Key('AppButtonWidget'),
        onPressed: onPressed,
        padding: padding,
        height: 40,
        color: color,
        elevation: 1,
        disabledColor: AppColors.mono3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
        ),
        minWidth: double.infinity,
        child: Text(
          text,
          style: onPressed != null ? textStyle : AppTextStyle.textMono2,
          textAlign: TextAlign.center,
        ),
      );
}
