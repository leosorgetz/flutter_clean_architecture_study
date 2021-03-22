import 'package:estudo_app/src/ui/utils/helpers/date_time_helper.dart';
import 'package:flutter/material.dart';

class AppDateInput extends StatefulWidget {
  final Function? validator;
  final Function? onChanged;
  final DateTime value;
  final String labelText;
  final FocusNode? currentFocusNode;
  final FocusNode? nextFocusNode;
  final bool readOnly;

  @override
  _AppDateInputState createState() => _AppDateInputState();

  const AppDateInput({
    required this.labelText,
    required this.value,
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
  Widget build(BuildContext context) => Container();
/*@override
  Widget build(BuildContext context) => AppTextInput(
        onTap: () async {
          final date = await PlatformDatePicker.showDate(
            context: context,
            firstDate: DateTime.parse('1900-01-01'),
            initialDate: widget.value ?? DateTime.now(),
            lastDate: DateTime(
              DateTime.now().year.toInt() + DateTime.now().month.toInt() + DateTime.now().day.toInt(),
            ),
          );
          setState(() {
            widget.onChanged(date);
          });
        },
        controller: TextEditingController(
          text: widget.value != null ? dateTimeHelper.formatToDMY(widget.value) : '',
        ),
        textStyle: AppTextStyle.textBlack,
        labelText: widget.labelText,
        validator: widget.validator,
        currentFocusNode: widget.currentFocusNode,
        nextFocusNode: widget.nextFocusNode,
        textInputAction: null,
        textInputType: null,
        readOnly: widget.readOnly,
      );*/
}
