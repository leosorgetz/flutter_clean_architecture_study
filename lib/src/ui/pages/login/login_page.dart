import 'package:estudo_app/src/ui/pages/login/login_controller.dart';
import 'package:estudo_app/src/ui/utils/constants/app_switcher.dart';
import 'package:estudo_app/src/ui/utils/states/base_state.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends BaseState<LoginPage, LoginController> {
  final _backgroundColor = Colors.white;
  late AppSwitcherSelectedSide selectedSide;
  late CrossFadeState _crossFadeState;

  @override
  void initState() {
    selectedSide = AppSwitcherSelectedSide.left;
    _crossFadeState = CrossFadeState.showFirst;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 20),
              width: double.infinity,
              height: 50,
              child: FlutterLogo(
                style: FlutterLogoStyle.horizontal,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: AppSwitcher(
                textLeft: 'Entrar',
                textRight: 'Registrar',
                onClick: (AppSwitcherSelectedSide side) {
                  setState(() {
                    selectedSide = side;
                    _crossFadeState =
                        _crossFadeState == CrossFadeState.showFirst
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst;
                  });
                },
              ),
            ),
            Expanded(
              child: AnimatedCrossFade(
                firstChild: _buildFormLogin(),
                secondChild: _buildFormRegister(),
                duration: Duration(milliseconds: 200),
                crossFadeState: _crossFadeState,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormLogin() => Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Form(
          key: controller.loginFormKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha o email';
                  }
                  if (!value.contains('@')) return 'Preencha o email';
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha a senha';
                  }
                  return null;
                },
                obscureText: true,
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                onPressed: () async {
                  final result = await controller.login();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(result),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text('Entrar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildFormRegister() => Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Form(
          key: controller.registerFormKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nome',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha o nome';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha o email';
                  }
                  if (!value.contains('@')) return 'Preencha o email';
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha a senha';
                  }
                  return null;
                },
                obscureText: true,
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                onPressed: () async {
                  final result = await controller.login();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(result),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text('Registrar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  void dispose() {
    super.dispose();
  }
}
