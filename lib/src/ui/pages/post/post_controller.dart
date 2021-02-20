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
  Post post;
  final dateTimeHelper = DateTimeHelper();
  DateTime dateTime;
  String text;

  void setPost(Post post) {
    this.post = post;
  }

  Future<void> doRetry() async {
    ToastHelper.show('Oi');
    await RetryHelper.testRetry(timeToRetry: 2, maximumAttempts: 4);
    ToastHelper.show('Tchau');
  }

  void showText() {
    ToastHelper.show('$text-${dateTimeHelper.formatToDMY(dateTime)}');
  }

  @computed
  bool get canShowValue {
    if (dateTime != null && text != null) {
      if (dateTime.toString().isNotEmpty && text.isNotEmpty) {
        return true;
      }
    }
    return false;
  }
}
