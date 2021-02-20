import 'package:estudo_app/src/ui/utils/constants/app_colors.dart';
import 'package:estudo_app/src/ui/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class AppTextInput extends StatefulWidget {
  final Function onChanged;
  final Function onSaved;
  final String labelText;
  final FocusNode currentFocusNode;
  final FocusNode nextFocusNode;
  final TextInputAction textInputAction;
  final Function onFieldSubmitted;
  final TextInputType textInputType;
  final bool obscureText;
  final Function validator;
  final String initialValue;
  final bool readOnly;
  final String value;
  final TextStyle textStyle;
  final String suffixIconPath;
  final Function suffixIconPathOnTap;
  final InputBorder border;
  final bool autoFocus;
  final TextAlign textAlign;
  final Function onTap;
  final TextEditingController controller;
  final List<TextInputFormatter> textInputFormatters;

  const AppTextInput({
    this.textInputAction,
    this.textInputType,
    this.value,
    this.initialValue,
    this.controller,
    this.onChanged,
    this.labelText,
    this.textStyle,
    this.currentFocusNode,
    this.nextFocusNode,
    this.obscureText = false,
    this.validator,
    this.onFieldSubmitted,
    this.readOnly = false,
    this.onSaved,
    this.border,
    this.textInputFormatters,
    this.suffixIconPath,
    this.textAlign = TextAlign.start,
    this.autoFocus = false,
    this.suffixIconPathOnTap,
    this.onTap,
  }) : super();

  @override
  _AppTextInputState createState() => _AppTextInputState();
}

class _AppTextInputState extends State<AppTextInput> {
  bool showEye;

  @override
  void initState() {
    super.initState();
    showEye = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) => Container(
        child: TextFormField(
          textAlign: widget.textAlign,
          controller: widget.controller,
          autofocus: widget.autoFocus,
          onTap: widget.onTap,
          decoration: InputDecoration(
            border: widget.border,
            errorText:
                widget.validator == null || !widget.currentFocusNode.hasFocus ? null : widget.validator(widget.value),
            alignLabelWithHint: true,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor),
            ),
            hintText: '',
            labelText: widget.labelText,
            suffixIcon: widget.obscureText ? _setEye() : _setIcon(),
          ),
          onChanged: widget.onChanged,
          obscureText: showEye,
          readOnly: widget.readOnly,
          validator: widget.validator,
          style: _setTextStyle(),
          textInputAction: widget.textInputAction,
          focusNode: widget.currentFocusNode,
          keyboardType: widget.textInputType,
          onSaved: widget.onSaved,
          inputFormatters: widget.textInputFormatters,
          onFieldSubmitted: (term) async {
            if (widget.onFieldSubmitted != null) {
              await widget.onFieldSubmitted.call();
            }
            _fieldFocusChange(context, widget.currentFocusNode, widget.nextFocusNode);
          },
        ),
      );

  Widget _setEye() {
    if (widget.obscureText) {
      return GestureDetector(
        onTap: () {
          setState(() {
            showEye = !showEye;
          });
        },
        child: Container(
          color: Colors.transparent,
          height: 10,
          width: 10,
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: showEye
              ? Icon(
                  Icons.remove_red_eye_sharp,
                  color: AppColors.black,
                )
              : Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.black,
                ),
        ),
      );
    }
    return null;
  }

  Widget _setIcon() {
    if (widget.suffixIconPathOnTap != null && widget.suffixIconPath != null) {
      return InkWell(
        onTap: widget.suffixIconPathOnTap,
        child: Container(
          height: 10,
          width: 10,
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SvgPicture.asset(
            widget.suffixIconPath,
            alignment: Alignment.bottomCenter,
          ),
        ),
      );
    }
    return null;
  }

  void _fieldFocusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();

    if (nextFocus != null) {
      FocusScope.of(context).requestFocus(nextFocus);
    }
  }

  TextStyle _setTextStyle() {
    if (widget.textStyle != null) {
      return widget.textStyle;
    }
    if (widget.readOnly) {
      return AppTextStyle.textDisable;
    }
    return AppTextStyle.textBlack;
  }
}