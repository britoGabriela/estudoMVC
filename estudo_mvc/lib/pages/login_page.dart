import 'package:flutter/material.dart';
import 'package:new_proj_estudos/components/login/custom_login_button_component.dart';
import 'package:new_proj_estudos/controllers/login_controller.dart';
import 'package:new_proj_estudos/widgets/custom_textformfield_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 239, 255),
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/roar-bg.png',
              height: 225,
            ),
            CustomTextFormFieldWidget(
              label: 'Usuário',
              onChanged: _controller.setLogin,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormFieldWidget(
              isObscure: true,
              label: 'Senha',
              onChanged: _controller.setPassword,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomLoginButtonComponent(loginController: _controller),
          ],
        ),
      ),
    );
  }
}
