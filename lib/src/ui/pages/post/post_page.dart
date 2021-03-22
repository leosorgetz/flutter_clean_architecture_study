import 'package:estudo_app/src/domain/models/result/post.dart';
import 'package:estudo_app/src/ui/pages/post/post_controller.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_button_widget.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_date_input.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_text_input.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  final Post post;

  const PostPage({required this.post});

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends BaseState<PostPage, PostController> {
  @override
  void initState() {
    super.initState();
    controller.setPost(widget.post);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.post!.title!),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            AppTextInput(
              labelText: 'Input',
              onChanged: (String text) {
                setState(() {
                  controller.text = text;
                });
              },
            ),
            SizedBox(height: 10),
            AppDateInput(
              labelText: 'Data de nascimento',
              value: controller.dateTime,
              onChanged: (DateTime date) {
                setState(() {
                  controller.dateTime = date;
                });
              },
            ),
            SizedBox(height: 10),
            AppButtonWidget(
              text: 'Click',
              onPressed: controller.canShowValue ? controller.showText : null,
            ),
          ],
        ),
      ),
    );
  }
}
