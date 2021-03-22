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
  @observable
  bool canShowValue = false;

  @observable
  DateTime? dateTime;

  @observable
  String? text;

  _PostControllerBase(
    this.dateTimeHelper,
    this.retryHelper,
    this.toastHelper,
  );

  void setPost(Post post) {
    this.post = post;
  }

  @action
  void setText(String value) {
    if (dateTime != null && text != null) {
      canShowValue = true;
    } else {
      canShowValue = false;
    }
    text = value;
  }

  @action
  void setDateTime(DateTime value) {
    if (dateTime != null && text != null) {
      canShowValue = true;
    } else {
      canShowValue = false;
    }
    dateTime = value;
  }

  Future<void> doRetry() async {
    toastHelper.show('Oi');
    await retryHelper.testRetry(timeToRetry: 2, maximumAttempts: 4);
    toastHelper.show('Tchau');
  }

  void showText() {
    toastHelper.show('$text-${dateTimeHelper.formatToDMY(dateTime!)}');
  }

// @computed
// bool get canShowValue {
// log(dateTime.toString());
// log(text!);
// if (dateTime.toString().isNotEmpty && (text != null || text!.isNotEmpty)) {
// if (dateTime.toString().isNotEmpty && text!.isNotEmpty) {
// if (text != null) {
// if (dateTime.toString().isNotEmpty) {
// if (text!.isNotEmpty) {
//   return true;
// }
// return false;
// }
}
