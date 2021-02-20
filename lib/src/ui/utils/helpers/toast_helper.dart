import 'package:oktoast/oktoast.dart';

class ToastHelper {
  static void show(String text) {
    showToast(
      text,
      position: ToastPosition.bottom,
      duration: Duration(seconds: 3),
    );
  }
}
