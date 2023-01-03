import 'package:flutter/material.dart';
import 'package:new_proj_estudos/models/post_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        backgroundColor: const Color(0xFF87B322),
        title: Text(args.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              args.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              args.body,
              style: const TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Notícia: ${args.id}  -  Autor: ${args.userId}',
              style: const TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
