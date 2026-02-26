import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  static Future<void> initHive() async {
    var directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    // Open boxes asynchronously ( non blocking main thread )
    await Future.wait([
      Hive.openBox('usageBox')
    ]);
  }

}