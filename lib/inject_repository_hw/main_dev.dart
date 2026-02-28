import 'package:provider/provider.dart';
import 'package:w6_small_hw_inject_another_repository/inject_repository_hw/data/repositories/songs/song_repository_mock.dart';

import 'data/repositories/songs/song_repository.dart';
import 'main_common.dart';

/// Configure provider dependencies for dev environement
List<Provider> get providersLocal {
  return [Provider<SongRepository>(create: (context) => SongRepositoryMock())];
}

void main() {
  mainCommon(providersLocal);
}
