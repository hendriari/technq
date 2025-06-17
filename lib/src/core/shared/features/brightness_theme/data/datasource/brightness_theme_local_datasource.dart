import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/services/shared_preference_services.dart';

sealed class BrightnessThemeLocalDatasource {
  Future<String?> saveTheme(bool isDark);

  Future<bool?> getCurrentTheme();
}

class BrightnessThemeLocalDatasourceImpl
    extends BrightnessThemeLocalDatasource {
  final SharedPreferenceService _preferenceService;

  BrightnessThemeLocalDatasourceImpl(this._preferenceService);

  @override
  Future<bool?> getCurrentTheme() async {
    final data = await _preferenceService.load<bool>('brightness');

    return data;
  }

  @override
  Future<String?> saveTheme(bool isDark) async {
    try {
      await _preferenceService.save<bool>(key: 'brightness', value: isDark);

      return 'Success save theme';
    } catch (e) {
      throw GeneralFailure(message: e.toString());
    }
  }
}
