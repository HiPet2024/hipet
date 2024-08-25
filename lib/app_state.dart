import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _userPhoto = '';
  String get userPhoto => _userPhoto;
  set userPhoto(String value) {
    _userPhoto = value;
  }

  List<String> _SelectedPhotos = [];
  List<String> get SelectedPhotos => _SelectedPhotos;
  set SelectedPhotos(List<String> value) {
    _SelectedPhotos = value;
  }

  void addToSelectedPhotos(String value) {
    SelectedPhotos.add(value);
  }

  void removeFromSelectedPhotos(String value) {
    SelectedPhotos.remove(value);
  }

  void removeAtIndexFromSelectedPhotos(int index) {
    SelectedPhotos.removeAt(index);
  }

  void updateSelectedPhotosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    SelectedPhotos[index] = updateFn(_SelectedPhotos[index]);
  }

  void insertAtIndexInSelectedPhotos(int index, String value) {
    SelectedPhotos.insert(index, value);
  }

  int _FollowUnfollow = 0;
  int get FollowUnfollow => _FollowUnfollow;
  set FollowUnfollow(int value) {
    _FollowUnfollow = value;
  }

  bool _commentIsAnswer = false;
  bool get commentIsAnswer => _commentIsAnswer;
  set commentIsAnswer(bool value) {
    _commentIsAnswer = value;
  }

  String _answerUsername = '';
  String get answerUsername => _answerUsername;
  set answerUsername(String value) {
    _answerUsername = value;
  }
}
