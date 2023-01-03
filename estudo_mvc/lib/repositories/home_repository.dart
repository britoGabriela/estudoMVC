import 'package:new_proj_estudos/models/post_model.dart';

abstract class HomeRepository {

  Future<List<PostModel>> getList();

}