import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import 'IoFileSystem.dart' as IOs;

class CustomCacheManager {
  static const key = 'customCacheKey';
  static CacheManager instance = CacheManager(
    Config(
      key,
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 30,
      repo: JsonCacheInfoRepository(databaseName: key),
      fileSystem: IOs.IOFile(key),
      fileService: HttpFileService(),
    ),
  );
}
