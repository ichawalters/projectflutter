import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/data/photo.dart';
import 'package:flutter_application_1/model/repository/photo_repository.dart';

class PhotoController extends ChangeNotifier {
  final List<Photos> _photos = [];
  final List<Photos> _bookmarkPhotos = [];
  bool _isLoading = false;

  List<Photos> get photos => _photos;
  List<Photos> get bookmarkPhotos => _bookmarkPhotos;
  bool get isLoading => _isLoading;

  fetch(int page) async {
    setLoading(true);
    photos.clear();
    photos.addAll(await PhotoRepository().photos(page: page));
    setLoading(false);
    notifyListeners();
  }

  // fetchDetail(String id) async {
  //   setLoading(true);
  //   _photoDetail = await PhotoRepository().photo(id: id);
  //   setLoading(false);
  //   notifyListeners();
  // }

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
