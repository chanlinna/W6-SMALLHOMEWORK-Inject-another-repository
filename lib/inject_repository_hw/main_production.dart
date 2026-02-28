import 'package:provider/provider.dart';
import 'package:w6_small_hw_inject_another_repository/inject_repository_hw/data/repositories/songs/song_repository.dart';
import 'package:w6_small_hw_inject_another_repository/inject_repository_hw/data/repositories/songs/song_repository_remote.dart';
import 'package:w6_small_hw_inject_another_repository/inject_repository_hw/main_common.dart';

List<Provider> get providersProduction {
  return [
    Provider<SongRepository>(create: (context) => SongRepositoryRemote()),
  ];
}

void main() {
  mainCommon(providersProduction);
}
