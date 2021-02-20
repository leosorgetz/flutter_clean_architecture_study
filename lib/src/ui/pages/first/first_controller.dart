import 'package:auto_route/auto_route.dart';
import 'package:estudo_app/config/router/base_router.gr.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'first_controller.g.dart';

@injectable
class FirstController = _FirstControllerBase with _$FirstController;

abstract class _FirstControllerBase with Store {
  int qty = 0;
  int maximumAttempts = 2;
  int timeRetry = 2;

  @observable
  bool buttonIsBlocked = false;

  _FirstControllerBase();

  void navigateToSecondPage() {
    ExtendedNavigator.root.push(Routes.secondPage);
  }

  @action
  void setBlocked(bool status) => buttonIsBlocked = status;

/*void testRetry() async {
    setBlocked(true);
    await Future.doWhile(() async {
      await Future.delayed(Duration(seconds: timeRetry));
      qty++;
      if (qty >= maximumAttempts) {
        return false;
      }
      ToastHelper.show("${qty.toString()} tentativa(s)");
      return true;
    });
    if (qty >= maximumAttempts) {
      ToastHelper.show("Tentou ${qty.toString()} vezes");
    }
    qty = 0;
    setBlocked(false);
    navigateToSecondPage();
  }*/
}
