import 'package:estudo_app/src/ui/pages/second/second_controller.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String title;

  const SecondPage({Key key, this.title = 'Second'}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends BaseState<SecondPage, SecondController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              onPressed: controller.navigateBack,
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
