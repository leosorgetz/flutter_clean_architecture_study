import 'package:intl/intl.dart';

class DateTimeHelper {

  String formatToDMY(DateTime dateTime){
    final formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(dateTime);
  }
}
