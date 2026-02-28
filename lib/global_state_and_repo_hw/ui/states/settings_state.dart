import 'package:flutter/widgets.dart';
import 'package:w6_small_hw_inject_another_repository/global_state_and_repo_hw/data/repositories/app_settings/app_settings_repository.dart';

import '../../model/settings/app_settings.dart';

class AppSettingsState extends ChangeNotifier {
  final AppSettingsRepository _repository;

  AppSettings? _appSettings;

  AppSettingsState(this._repository);

  Future<void> init() async {
    // Might be used to load data from repository
    _appSettings = await _repository.load();
    notifyListeners();
  }

  ThemeColor get theme => _appSettings?.themeColor ?? ThemeColor.blue;

  Future<void> changeTheme(ThemeColor themeColor) async {
    if (_appSettings == null) return;
    _appSettings = _appSettings!.copyWith(themeColor: themeColor);

    notifyListeners();
    await _repository.save(_appSettings!);
  }
}
