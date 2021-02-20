import 'package:estudo_app/src/ui/pages/first/first_controller.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FirstPage extends StatefulWidget {
  final String title;

  const FirstPage({Key key, this.title = 'First'}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends BaseState<FirstPage, FirstController> {
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
            Observer(builder: (context) {
              return RaisedButton(
                color: Colors.blue,
                onPressed: controller.buttonIsBlocked ? null : controller.navigateToSecondPage,
                child: Text('Click'),
              );
            }),
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
