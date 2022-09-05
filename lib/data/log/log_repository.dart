import 'package:riverpod_testing/data/log/log_database.dart';

class LogRepository {
  final _db = LogDatabase();

  Future<List<Log>> getAllLogs() => _db.select(_db.logs).get();
  Future<int> addLog(LogsCompanion log) => _db.into(_db.logs).insert(log);
}
