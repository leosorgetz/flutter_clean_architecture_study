import 'package:estudo_app/src/ui/utils/constants/app_text_styles.dart';
import 'package:estudo_app/src/ui/utils/helpers/date_time_helper.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_text_input.dart';
import 'package:flutter/material.dart';
import 'package:platform_date_picker/platform_date_picker.dart';

class AppDateInput extends StatefulWidget {
  final Function? validator;
  final Function? onChanged;
  final DateTime? value;
  final String labelText;
  final FocusNode? currentFocusNode;
  final FocusNode? nextFocusNode;
  final bool readOnly;

  @override
  _AppDateInputState createState() => _AppDateInputState();

  const AppDateInput({
    required this.labelText,
    this.value,
    this.validator,
    this.onChanged,
    this.currentFocusNode,
    this.nextFocusNode,
    this.readOnly = true,
  });
}

class _AppDateInputState extends State<AppDateInput> {
  final dateTimeHelper = DateTimeHelper();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => AppTextInput(
        onTap: () async {
          final now = DateTime.now();
          final date = await showPlatformDatePicker(
            context: context,
            firstDate: DateTime.parse('1900-01-01'),
            initialDate: widget.value ?? now,
            lastDate: DateTime(
              now.year.toInt() + now.month.toInt() + now.day.toInt(),
            ),
          );
          setState(() {
            widget.onChanged!(date ?? now);
          });
        },
        controller: TextEditingController(
          text: widget.value != null ? dateTimeHelper.formatToDMY(widget.value!) : null,
        ),
        textStyle: AppTextStyle.textBlack,
        labelText: widget.labelText,
        // validator: widget.validator,
        currentFocusNode: widget.currentFocusNode,
        nextFocusNode: widget.nextFocusNode,
        textInputAction: null,
        textInputType: null,
        readOnly: widget.readOnly,
      );
}
