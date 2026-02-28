import 'package:w6_small_hw_inject_another_repository/global_state_and_repo_hw/data/repositories/app_settings/app_settings_repository.dart';
import 'package:w6_small_hw_inject_another_repository/global_state_and_repo_hw/model/settings/app_settings.dart';

class AppSettingsRepositoryMock implements AppSettingsRepository{
  AppSettings _settings = AppSettings(themeColor: ThemeColor.blue);

  @override
  Future<AppSettings> load() async {
    return _settings;
  }

  @override
  Future<void> save(AppSettings settings) async {
    _settings = settings;
  }
}