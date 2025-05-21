import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _localnotification =
          prefs.getString('ff_localnotification') ?? _localnotification;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _localnotification = '';
  String get localnotification => _localnotification;
  set localnotification(String value) {
    _localnotification = value;
    prefs.setString('ff_localnotification', value);
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
