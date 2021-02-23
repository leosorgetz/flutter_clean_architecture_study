import 'package:estudo_app/src/ui/pages/posts/widgets/drawer_posts_controller.dart';
import 'package:estudo_app/src/ui/utils/constants/app_assets_path.dart';
import 'package:estudo_app/src/ui/utils/constants/app_text_styles.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DrawerPostsWidget extends StatefulWidget {
  @override
  _DrawerPostsWidgetState createState() => _DrawerPostsWidgetState();
}

class _DrawerPostsWidgetState extends BaseState<DrawerPostsWidget, DrawerPostsController> {
  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4),
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
                      'Projeto exemplo aplicando conceitos e outras coisas legais!',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.textWhite,
                    ),
                  ],
                ),
              ),
            ),
            _buildListTile(
              leading: Icon(Icons.remove_red_eye_outlined),
              title: 'Pudim',
              onTap: controller.navigateToAnimationPage,
            ),
            Observer(builder: (context) {
              return _buildListTile(
                trailing: AppSwitchWidget(
                  value: controller.status,
                  onChanged: controller.activateFingerprint,
                ),
                leading: Text('Configurações'),
              );
            }),
          ],
        ),
      );

  Widget _buildListTile({
    Widget trailing,
    Widget leading,
    String title,
    Function onTap,
  }) =>
      ListTile(
        trailing: trailing,
        leading: leading,
        title: title != null ? Text(title) : Offstage(),
        onTap: onTap,
      );
}
