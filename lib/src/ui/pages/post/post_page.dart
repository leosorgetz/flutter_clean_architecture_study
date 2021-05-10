import 'dart:developer';

import 'package:estudo_app/src/domain/models/result/post.dart';
import 'package:estudo_app/src/ui/pages/post/post_controller.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_button_widget.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_date_input.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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
            Observer(builder: (context) {
              return AppTextInput(
                labelText: 'Input',
                value: controller.text,
                onChanged: controller.setText,
              );
            }),
            SizedBox(height: 10),
            Observer(builder: (context) {
              return AppDateInput(
                labelText: 'Data de nascimento',
                value: controller.dateTime,
                onChanged: controller.setDateTime,
              );
            }),
            SizedBox(height: 10),
            Observer(builder: (context) {
              return AppButtonWidget(
                text: 'Click',
                onPressed: controller.canShowValue ? controller.showText : null,
                // onPressed: controller.showText,
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
    log('asdasd');
  }
}
