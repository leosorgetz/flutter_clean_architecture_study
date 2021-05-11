import 'package:estudo_app/src/ui/pages/page_two/page_two_controller.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';

class PageTwoPage extends StatefulWidget {
  const PageTwoPage();

  @override
  _PageTwoPageState createState() => _PageTwoPageState();
}

class _PageTwoPageState extends BaseState<PageTwoPage, PageTwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageTwoPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppButtonWidget(
            text: 'Next',
            onPressed: controller.nextPage,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.loggerHelper.show('DISPOSE PAGE TWO');
  }
}
