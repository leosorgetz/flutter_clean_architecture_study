import 'package:estudo_app/src/ui/utils/constants/app_colors.dart';
import 'package:estudo_app/src/ui/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppButtonWidget extends StatelessWidget {
  final Color borderColor;
  final Color color;
  final String text;
  final Function onPressed;
  final EdgeInsetsGeometry padding;
  final Widget widget;
  final TextStyle textStyle;

  const AppButtonWidget({
    @required this.text,
    @required this.onPressed,
    this.padding,
    this.widget,
    this.color,
    this.borderColor = Colors.transparent,
    this.textStyle = AppTextStyle.textWhite,
  }) : super();

  @override
  Widget build(BuildContext context) => MaterialButton(
        key: Key('AppButtonWidget'),
        onPressed: onPressed,
        padding: padding,
        height: 40,
        color: color ?? AppColors.primaryColor,
        elevation: 1,
        disabledColor: AppColors.mono3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
        ),
        minWidth: double.infinity,
        child: widget ??
            Text(
              text,
              style: onPressed != null ? AppTextStyle.textWhite : AppTextStyle.textMono2,
              textAlign: TextAlign.center,
            ),
      );
}
