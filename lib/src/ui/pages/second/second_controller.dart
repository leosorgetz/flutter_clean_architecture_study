import 'package:auto_route/auto_route.dart';
import 'package:estudo_app/src/ui/utils/helpers/logger_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'second_controller.g.dart';

@injectable
class SecondController = _SecondControllerBase with _$SecondController;

abstract class _SecondControllerBase with Store {
  _SecondControllerBase() {
    LoggerHelper.show('OASHIASHDUADS');
  }

  void navigateBack() {
    ExtendedNavigator.root.pop();
  }
}
