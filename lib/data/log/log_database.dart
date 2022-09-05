import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'log_database.g.dart';

class Logs extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get time => dateTime()();
  TextColumn get level => text()();
  TextColumn get tag => text()();
  TextColumn get message => text()();

  TextColumn get exception => text().nullable()();
  TextColumn get stackTrace => text().nullable()();
}

@DriftDatabase(tables: [Logs])
class LogDatabase extends _$LogDatabase {
  LogDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'logs.sqlite'));
    return NativeDatabase(file);
  });
}
