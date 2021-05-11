import 'package:estudo_app/src/ui/pages/page_three/page_three_controller.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';

class PageThreePage extends StatefulWidget {
  const PageThreePage();

  @override
  _PageThreePageState createState() => _PageThreePageState();
}

class _PageThreePageState extends BaseState<PageThreePage, PageThreeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageThreePage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppButtonWidget(
            text: 'Back all',
            onPressed: controller.backAll,
          ),
          AppButtonWidget(
            text: 'Back to Page One',
            onPressed: controller.backToPageOne,
          ),
          AppButtonWidget(
            text: 'Back to Posts and go to Post',
            onPressed: controller.backToPostsAndGoToPost,
          ),
          AppButtonWidget(
            text: 'Back with data',
            onPressed: controller.backWithData,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.loggerHelper.show('DISPOSE PAGE THREE');
  }
}
