// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_proj_estudos/controllers/home_controller.dart';
import 'package:new_proj_estudos/models/post_model.dart';
import 'package:new_proj_estudos/repositories/home_repository_imp.dart';
import 'package:new_proj_estudos/services/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        backgroundColor: Color(0xFF87B322),
        title: Text('Home'),
        centerTitle: true,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          IconButton(
            onPressed: () {
              PrefsService.logout();
              Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => true);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              separatorBuilder: (_, __) => Divider(),
              itemCount: list.length,
              itemBuilder: (_, index) => ListTile(
                leading: Text(list[index].id.toString()),
                horizontalTitleGap: 0,
                title: Text(
                  list[index].title,
                  textAlign: TextAlign.justify,
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 20,
                  ),
                ),
                onTap: () => Navigator.of(context)
                    .pushNamed('/details', arguments: list[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
