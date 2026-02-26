import 'package:provider/provider.dart';
import 'package:w6_small_hw_inject_another_repository/data/repositories/songs/song_repository.dart';
import 'package:w6_small_hw_inject_another_repository/data/repositories/songs/song_repository_remote.dart';
import 'package:w6_small_hw_inject_another_repository/main_common.dart';

List<Provider> get providersProduction {
  return [
    Provider<SongRepository>(create: (context) => SongRepositoryRemote()),
  ];
}

void main() {
  mainCommon(providersProduction);
}
