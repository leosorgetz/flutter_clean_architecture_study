import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

@injectable
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final loginFormKey = GlobalKey<FormState>();
  final registerFormKey = GlobalKey<FormState>();

  Future<String> login() async {
    if (loginFormKey.currentState!.validate()) return 'Logou';
    return 'Preencha os campos.';
  }
}
