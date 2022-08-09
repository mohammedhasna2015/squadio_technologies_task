import 'dart:convert';

import 'package:squadio_technologies_task/base/services/base_service.dart';
import 'package:squadio_technologies_task/features/movie/data/models/movie_model.dart';
import 'package:squadio_technologies_task/model/response_model.dart';

class MovieService {

  Future<ResponseModel> getAllPeople(String path) async {

    var response = await BaseService().getRequest("$path",);
    return response.isSuccess
        ? ResponseModel(data: MovieModel.fromJson(json.decode(response.data)))
        : ResponseModel(errorMessage: response.errorMessage, isSuccess: response.isSuccess);
  }


}