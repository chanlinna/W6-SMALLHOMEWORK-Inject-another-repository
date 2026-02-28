import 'package:w6_small_hw_inject_another_repository/global_state_and_repo_hw/model/settings/app_settings.dart';

abstract class AppSettingsRepository {
  Future<AppSettings> load();
  Future<void> save(AppSettings settings);
}