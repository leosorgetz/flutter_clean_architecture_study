import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'example_animation_controller.g.dart';

@injectable
class ExampleAnimationController = _ExampleAnimationControllerBase with _$ExampleAnimationController;

abstract class _ExampleAnimationControllerBase with Store {
  _ExampleAnimationControllerBase();
}
