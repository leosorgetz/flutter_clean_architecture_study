import 'package:estudo_app/src/domain/models/result/post.dart';
import 'package:estudo_app/src/ui/utils/helpers/date_time_helper.dart';
import 'package:estudo_app/src/ui/utils/helpers/retry_helper.dart';
import 'package:estudo_app/src/ui/utils/helpers/toast_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'post_controller.g.dart';

@injectable
class PostController = _PostControllerBase with _$PostController;

abstract class _PostControllerBase with Store {
  final DateTimeHelper dateTimeHelper;
  final RetryHelper retryHelper;
  final ToastHelper toastHelper;
  Post? post;
  DateTime dateTime = DateTime.now();
  String text = 'teste';

  _PostControllerBase(
    this.dateTimeHelper,
    this.retryHelper,
    this.toastHelper,
  );

  void setPost(Post post) {
    this.post = post;
  }

  Future<void> doRetry() async {
    toastHelper.show('Oi');
    await retryHelper.testRetry(timeToRetry: 2, maximumAttempts: 4);
    toastHelper.show('Tchau');
  }

  void showText() {
    toastHelper.show('$text-${dateTimeHelper.formatToDMY(dateTime)}');
  }

  @computed
  bool get canShowValue {
    if (dateTime.toString().isNotEmpty && text.isNotEmpty) {
      return true;
    }
    return false;
  }
}
