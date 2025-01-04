import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/api_provider.dart';
import 'package:flutter_application_1/model/data/photo.dart';
import 'package:flutter_application_1/view/photo_detail.dart';

class PhotoRepository extends ApiProvider {
  Future<List<Photo>> photos({required int page}) async {

    try {
      // print('Debug page: $page');
      Response response = await dio.get('photos?page=$page');
      List<dynamic> listData = response.data;
      return listData.map((element) => Photo.fromJson(element)).toList();
    } catch (_) {
    // print('dio exception: $_');
      return [];
    }
  }

  
  // to do fromMap buat get api
  // Future<PhotoDetail?> photo({required String id}) async {
  //   try {
  //     Response response = await dio.get('photos/$id');
  //     return PhotoDetail.fromMap(response.data);
  //   } catch (_) {
  //     return null;
  //   }
  //   }
  }

