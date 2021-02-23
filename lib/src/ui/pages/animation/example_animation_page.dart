import 'package:estudo_app/src/ui/pages/animation/example_animation_controller.dart';
import 'package:estudo_app/src/ui/utils/helpers/sizes_helper.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ExampleAnimationPage extends StatefulWidget {
  const ExampleAnimationPage();

  @override
  _ExampleAnimationPageState createState() => _ExampleAnimationPageState();
}

class _ExampleAnimationPageState extends BaseState<ExampleAnimationPage, ExampleAnimationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Animation Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 400),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: 350,
                  child: SlideAnimation(
                    child: widget,
                  ),
                ),
                children: [
                  _buildExample(),
                  _buildExample(),
                  _buildExample(),
                  _buildExample(),
                  _buildExample(),
                  _buildExample(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExample() => Column(children: [
        _buildContainer(
          color: Colors.deepPurpleAccent,
          width: SizesHelper.getWidth(),
        ),
        _buildSpace(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildContainer(
              color: Colors.blueAccent,
            ),
            _buildContainer(
              color: Colors.red,
            ),
            _buildContainer(
              color: Colors.green,
            ),
          ],
        ),
        _buildSpace(),
      ]);

  Widget _buildContainer({
    @required Color color,
    double width,
    double height,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      width: width ?? 100,
      height: height ?? 100,
    );
  }

  Widget _buildSpace({double height = 10}) => SizedBox(height: height);

  @override
  void dispose() {
    super.dispose();
  }
}
