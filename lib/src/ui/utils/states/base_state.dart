import 'dart:developer';

import 'package:estudo_app/config/di/di.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

abstract class BaseState<Widget extends StatefulWidget, Controller extends Store> extends State<Widget> {
  final Controller controller = getIt<Controller>();

  @override
  void dispose() {
    log('[DISPOSE]');
    super.dispose();
  }
}
