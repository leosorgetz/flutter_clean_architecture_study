import 'package:estudo_app/src/ui/pages/posts/widgets/drawer_posts_controller.dart';
import 'package:estudo_app/src/ui/utils/constants/app_assets_path.dart';
import 'package:estudo_app/src/ui/utils/constants/app_text_styles.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DrawerPostsWidget extends StatefulWidget {
  @override
  _DrawerPostsWidgetState createState() => _DrawerPostsWidgetState();
}

class _DrawerPostsWidgetState extends BaseState<DrawerPostsWidget, DrawerPostsController> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.dstATop,
                ),
                image: AssetImage(AppAssetsPath.uncle),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flutter Clean Arch',
                    style: AppTextStyle.titleWhite,
                  ),
                  Text(
                    'Projeto Exemplo aplicando conceitos e outras coisas legais!',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.textWhite,
                  ),
                ],
              ),
            ),
          ),
          Observer(builder: (context) {
            return ListTile(
              trailing: Switch(
                value: controller.status,
                onChanged: controller.activateFingerprint,
              ),
              leading: Text('Configurações'),
              // trailing: Icon(Icons.settings),
            );
          }),
        ],
      ),
    );
  }
}
