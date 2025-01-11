import 'dart:convert';

import 'package:flutter_application_1/core/hive_storage.dart';
import 'package:flutter_application_1/model/data/photo.dart';

class AuthRepository {
  Future<User?> save (User user) async{
    try {
      await HiveStorage.instance.box.put
      ('authBox', jsonEncode(user.toJson()),
      );
      return await getUser();
    } catch (e) {
      return null;
    }
  }

  Future<User?> getUser () async{
    try {
      final jsonString = await HiveStorage.instance.box.get('authBox');
      return User.fromJson(jsonDecode(jsonString));
    } catch (e) {
      return null;
    }
  }

  Future<User?> delete () async{
    try {
      final jsonString = await HiveStorage.instance.box.delete('authBox');
      return await getUser();
    } catch (e) {
      return null;
    }
  }
}