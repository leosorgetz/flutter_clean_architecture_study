import 'package:estudo_app/src/ui/pages/splash/splash_controller.dart';
import 'package:estudo_app/src/ui/utils/constants/app_colors.dart';
import 'package:estudo_app/src/ui/utils/constants/app_text_styles.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:estudo_app/src/ui/utils/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SplashPage extends StatefulWidget {
  const SplashPage();

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends BaseState<SplashPage, SplashController> {
  @override
  void initState() {
    super.initState();
    controller.checkBiometric(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Observer(
        builder: (context) {
          if (controller.errorMessage == null) {
            return Container();
          }
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller.errorMessage!,
                  style: AppTextStyle.titleBlack,
                ),
                SizedBox(height: 30),
                AppButtonWidget(
                  text: 'Autenticar',
                  onPressed: () {
                    controller.checkBiometric(context);
                  },
                  color: Colors.lightGreen,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
