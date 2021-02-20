import 'package:injectable/injectable.dart';
import 'package:oktoast/oktoast.dart';

@injectable
class ToastHelper {
  void show(String text) {
    showToast(
      text,
      position: ToastPosition.bottom,
      duration: Duration(seconds: 3),
    );
  }
}
