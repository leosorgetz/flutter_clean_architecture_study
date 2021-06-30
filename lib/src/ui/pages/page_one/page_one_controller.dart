import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/ui/utils/helpers/logger_helper.dart';
import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'page_one_controller.g.dart';

@injectable
class PageOneController = _PageOneControllerBase with _$PageOneController;

abstract class _PageOneControllerBase with Store {
  final NavigatorHelper _navigatorHelper;
  final LoggerHelper loggerHelper;

  _PageOneControllerBase(this._navigatorHelper, this.loggerHelper);

  void nextPage() {
    _navigatorHelper.router.push(PageTwoPageRoute());
  }
}
