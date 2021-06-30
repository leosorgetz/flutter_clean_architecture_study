import 'package:estudo_app/src/ui/pages/page_one/page_one_controller.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';

class PageOnePage extends StatefulWidget {
  const PageOnePage();

  @override
  _PageOnePageState createState() => _PageOnePageState();
}

class _PageOnePageState extends BaseState<PageOnePage, PageOneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageOnePage'),
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
    controller.loggerHelper.show('DISPOSE PAGE ONE');
  }
}
