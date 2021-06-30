import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:estudo_app/src/ui/utils/helpers/logger_helper.dart';
import 'package:estudo_app/src/ui/utils/helpers/navigator_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:oktoast/oktoast.dart';

part 'page_two_controller.g.dart';

@injectable
class PageTwoController = _PageTwoControllerBase with _$PageTwoController;

abstract class _PageTwoControllerBase with Store {
  final NavigatorHelper _navigatorHelper;
  final LoggerHelper loggerHelper;

  _PageTwoControllerBase(this._navigatorHelper, this.loggerHelper);

  Future<void> nextPage() async {
    final result = await _navigatorHelper.router.push(PageThreePageRoute());
    if (result != null) {
      showToast(
        result.toString(),
        position: ToastPosition.bottom,
      );
    }
  }
}
