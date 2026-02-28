import 'package:provider/provider.dart';
import 'package:nested/nested.dart';
import 'package:w6_small_hw_inject_another_repository/global_state_and_repo_hw/data/repositories/app_settings/app_settings_repository.dart';
import 'package:w6_small_hw_inject_another_repository/global_state_and_repo_hw/data/repositories/app_settings/app_settings_repository_mock.dart';

import 'main_common.dart';
import 'data/repositories/songs/song_repository.dart';
import 'data/repositories/songs/song_repository_mock.dart';
import 'ui/states/player_state.dart';
import 'ui/states/settings_state.dart';

/// Configure provider dependencies for dev environment
List<SingleChildWidget> get devProviders {
  return [
    // 1 - Inject the song repository
    Provider<SongRepository>(create: (_) => SongRepositoryMock()),

    // 2 - Inject the player state
    ChangeNotifierProvider<PlayerState>(create: (_) => PlayerState()),

    // 3 - Inject the app settings repository
    Provider<AppSettingsRepository>(create: (_) => AppSettingsRepositoryMock()),

    // 4 - Inject the app setting state with repository
    //ChangeNotifierProvider<AppSettingsState>(create: (_) => AppSettingsState()),
    ChangeNotifierProvider<AppSettingsState>(
      create: (context) {
        final state = AppSettingsState(context.read<AppSettingsRepository>());
        state.init();
        return state;
      },
    ),
  ];
}

void main() {
  mainCommon(devProviders);
}
