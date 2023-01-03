import 'package:flutter/cupertino.dart';
import 'package:new_proj_estudos/models/post_model.dart';
import 'package:new_proj_estudos/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;

  HomeController(this._homeRepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _homeRepository.getList();
  }
}
