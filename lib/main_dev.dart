import 'package:estudo_app/app/app_widget.dart';
import 'package:estudo_app/config/di/di.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(AppWidget());
}
