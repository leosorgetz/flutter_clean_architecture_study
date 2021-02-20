import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@injectable
class DateTimeHelper {
  String formatToDMY(DateTime dateTime) {
    final formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(dateTime);
  }
}
