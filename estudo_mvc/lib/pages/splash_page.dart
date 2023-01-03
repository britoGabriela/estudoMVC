import 'package:flutter/material.dart';
import 'package:new_proj_estudos/services/prefs_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.wait([
      PrefsService.isAuth(),
      Future.delayed(const Duration(seconds: 4)),
    ]).then((value) => value[0]
        ? Navigator.of(context).pushReplacementNamed('/home')
        : Navigator.of(context).pushReplacementNamed('/login'));

    // Future.delayed(Duration(seconds: 4)).then(
    //   (e) => Navigator.of(context).pushReplacementNamed('/login'),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF87B322),
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
