import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/data/auth_repository.dart';
import 'package:flutter_application_1/model/data/photo.dart';

class AuthController extends ChangeNotifier{
  User? _user;

  User? get user => _user;

  Future<User?> fetch() async{
    _user = await AuthRepository().getUser();
    notifyListeners();
  }

  login(User user) async{
    _user = await AuthRepository().save(user);
    notifyListeners();
  }

  logout() async{
    _user = await AuthRepository().delete();
    notifyListeners();
  }
  }
