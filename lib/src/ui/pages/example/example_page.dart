import 'package:estudo_app/src/ui/pages/example/example_controller.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage();

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends BaseState<ExamplePage, ExampleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page'),
      ),
      body: Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
