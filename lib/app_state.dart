import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';

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

  final _homeQueryManager = FutureRequestManager<List<ProfileRow>>();
  Future<List<ProfileRow>> homeQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProfileRow>> Function() requestFn,
  }) =>
      _homeQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearHomeQueryCache() => _homeQueryManager.clear();
  void clearHomeQueryCacheKey(String? uniqueKey) =>
      _homeQueryManager.clearRequest(uniqueKey);
}
