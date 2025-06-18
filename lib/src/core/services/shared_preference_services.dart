import 'package:shared_preferences/shared_preferences.dart';
import 'package:technq/src/core/utils/enums.dart';

sealed class SharedPreferenceService {
  Future<Object?> saveData(
    String key,
    SharedPreferenceDataType type,
    dynamic value,
  );

  Future<void> save<E>({required String key, required E value});

  Future<E?> load<E>(String key);

  Future<void> reset();
}

class SharedPreferenceServiceImpl extends SharedPreferenceService {
  @override
  Future<void> save<E>({
    required String key,
    required E value,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      switch (value.runtimeType) {
        case const (bool):
          await prefs.setBool(key, value as bool);
        case const (int):
          await prefs.setInt(key, value as int);
        case const (String):
          await prefs.setString(key, value as String);
        case const (double):
          await prefs.setDouble(key, value as double);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Object?> saveData(
    String key,
    SharedPreferenceDataType type,
    value,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      switch (type) {
        case SharedPreferenceDataType.int:
          await prefs.setInt(key, value);
          break;
        case SharedPreferenceDataType.string:
          await prefs.setString(key, value);
          break;
        case SharedPreferenceDataType.bool:
          await prefs.setBool(key, value);
          break;
      }
    } catch (e) {
      return e;
    }
    return null;
  }

  @override
  Future<E?> load<E>(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.get(key);

    if (value is E) {
      return value;
    } else {
      await prefs.remove(key);
      return null;
    }
  }

  @override
  Future<void> reset() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
    } catch (e) {
      rethrow;
    }
  }
}
