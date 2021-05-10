import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class SizesHelper {
  final NavigatorHelper _navigatorHelper;

  SizesHelper(this._navigatorHelper);

  double getHeight() {
    return MediaQuery.of(_navigatorHelper.context).size.height;
  }

  double getWidth() {
    return MediaQuery.of(_navigatorHelper.context).size.height;
  }

  double getStatusBarHeight() {
    return MediaQuery.of(_navigatorHelper.context).size.height;
  }

  double getBottomSheetHeight() {
    return MediaQuery.of(_navigatorHelper.context).size.height;
  }

  double getToolBarHeight() => kToolbarHeight;

  double getBottomNavigationHeight() => kBottomNavigationBarHeight;

  double getWidthByPercentage(int percentage) {
    if (percentage > 100 || 0 > percentage) {
      throw Exception('A porcentagem deve ser maior que 0 e menor ou igual a 100.');
    }
    return getWidth() * (percentage / 100);
  }

  double getHeightByPercentage(int percentage) {
    if (percentage > 100 || 0 > percentage) {
      throw Exception('A porcentagem deve ser maior que 0 e menor ou igual a 100.');
    }
    return getHeight() * (percentage / 100);
  }
}
