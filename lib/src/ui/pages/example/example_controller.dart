import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'example_controller.g.dart';

@injectable
class ExampleController = _ExampleControllerBase with _$ExampleController;

abstract class _ExampleControllerBase with Store {}
