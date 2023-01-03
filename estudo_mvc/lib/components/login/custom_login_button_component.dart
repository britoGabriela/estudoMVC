// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:new_proj_estudos/controllers/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  LoginController loginController;
  CustomLoginButtonComponent({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.isLoading,
      builder: (_, isLoading, __) {
        return isLoading
            ? const CircularProgressIndicator(color: Color(0xFF87B322))
            : ElevatedButton(
                onPressed: () {
                  loginController.authentication().then(
                    (result) {
                      if (result) {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.black,
                            content: Text('Login inválido!'),
                            duration: Duration(seconds: 4),
                          ),
                        );
                      }
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF87B322),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width, 45),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 17),
                ),
              );
      },
    );
  }
}
