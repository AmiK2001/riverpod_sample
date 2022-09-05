// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Log extends DataClass implements Insertable<Log> {
  final int id;
  final DateTime time;
  final String level;
  final String tag;
  final String message;
  final String? exception;
  final String? stackTrace;
  const Log(
      {required this.id,
      required this.time,
      required this.level,
      required this.tag,
      required this.message,
      this.exception,
      this.stackTrace});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['time'] = Variable<DateTime>(time);
    map['level'] = Variable<String>(level);
    map['tag'] = Variable<String>(tag);
    map['message'] = Variable<String>(message);
    if (!nullToAbsent || exception != null) {
      map['exception'] = Variable<String>(exception);
    }
    if (!nullToAbsent || stackTrace != null) {
      map['stack_trace'] = Variable<String>(stackTrace);
    }
    return map;
  }

  LogsCompanion toCompanion(bool nullToAbsent) {
    return LogsCompanion(
      id: Value(id),
      time: Value(time),
      level: Value(level),
      tag: Value(tag),
      message: Value(message),
      exception: exception == null && nullToAbsent
          ? const Value.absent()
          : Value(exception),
      stackTrace: stackTrace == null && nullToAbsent
          ? const Value.absent()
          : Value(stackTrace),
    );
  }

  factory Log.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Log(
      id: serializer.fromJson<int>(json['id']),
      time: serializer.fromJson<DateTime>(json['time']),
      level: serializer.fromJson<String>(json['level']),
      tag: serializer.fromJson<String>(json['tag']),
      message: serializer.fromJson<String>(json['message']),
      exception: serializer.fromJson<String?>(json['exception']),
      stackTrace: serializer.fromJson<String?>(json['stackTrace']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'time': serializer.toJson<DateTime>(time),
      'level': serializer.toJson<String>(level),
      'tag': serializer.toJson<String>(tag),
      'message': serializer.toJson<String>(message),
      'exception': serializer.toJson<String?>(exception),
      'stackTrace': serializer.toJson<String?>(stackTrace),
    };
  }

  Log copyWith(
          {int? id,
          DateTime? time,
          String? level,
          String? tag,
          String? message,
          Value<String?> exception = const Value.absent(),
          Value<String?> stackTrace = const Value.absent()}) =>
      Log(
        id: id ?? this.id,
        time: time ?? this.time,
        level: level ?? this.level,
        tag: tag ?? this.tag,
        message: message ?? this.message,
        exception: exception.present ? exception.value : this.exception,
        stackTrace: stackTrace.present ? stackTrace.value : this.stackTrace,
      );
  @override
  String toString() {
    return (StringBuffer('Log(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('level: $level, ')
          ..write('tag: $tag, ')
          ..write('message: $message, ')
          ..write('exception: $exception, ')
          ..write('stackTrace: $stackTrace')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, time, level, tag, message, exception, stackTrace);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Log &&
          other.id == this.id &&
          other.time == this.time &&
          other.level == this.level &&
          other.tag == this.tag &&
          other.message == this.message &&
          other.exception == this.exception &&
          other.stackTrace == this.stackTrace);
}

class LogsCompanion extends UpdateCompanion<Log> {
  final Value<int> id;
  final Value<DateTime> time;
  final Value<String> level;
  final Value<String> tag;
  final Value<String> message;
  final Value<String?> exception;
  final Value<String?> stackTrace;
  const LogsCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.level = const Value.absent(),
    this.tag = const Value.absent(),
    this.message = const Value.absent(),
    this.exception = const Value.absent(),
    this.stackTrace = const Value.absent(),
  });
  LogsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime time,
    required String level,
    required String tag,
    required String message,
    this.exception = const Value.absent(),
    this.stackTrace = const Value.absent(),
  })  : time = Value(time),
        level = Value(level),
        tag = Value(tag),
        message = Value(message);
  static Insertable<Log> custom({
    Expression<int>? id,
    Expression<DateTime>? time,
    Expression<String>? level,
    Expression<String>? tag,
    Expression<String>? message,
    Expression<String>? exception,
    Expression<String>? stackTrace,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (time != null) 'time': time,
      if (level != null) 'level': level,
      if (tag != null) 'tag': tag,
      if (message != null) 'message': message,
      if (exception != null) 'exception': exception,
      if (stackTrace != null) 'stack_trace': stackTrace,
    });
  }

  LogsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? time,
      Value<String>? level,
      Value<String>? tag,
      Value<String>? message,
      Value<String?>? exception,
      Value<String?>? stackTrace}) {
    return LogsCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      level: level ?? this.level,
      tag: tag ?? this.tag,
      message: message ?? this.message,
      exception: exception ?? this.exception,
      stackTrace: stackTrace ?? this.stackTrace,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (level.present) {
      map['level'] = Variable<String>(level.value);
    }
    if (tag.present) {
      map['tag'] = Variable<String>(tag.value);
    }
    if (message.present) {
      map['message'] = Variable<String>(message.value);
    }
    if (exception.present) {
      map['exception'] = Variable<String>(exception.value);
    }
    if (stackTrace.present) {
      map['stack_trace'] = Variable<String>(stackTrace.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LogsCompanion(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('level: $level, ')
          ..write('tag: $tag, ')
          ..write('message: $message, ')
          ..write('exception: $exception, ')
          ..write('stackTrace: $stackTrace')
          ..write(')'))
        .toString();
  }
}

class $LogsTable extends Logs with TableInfo<$LogsTable, Log> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LogsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime> time = GeneratedColumn<DateTime>(
      'time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<String> level = GeneratedColumn<String>(
      'level', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _tagMeta = const VerificationMeta('tag');
  @override
  late final GeneratedColumn<String> tag = GeneratedColumn<String>(
      'tag', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _messageMeta = const VerificationMeta('message');
  @override
  late final GeneratedColumn<String> message = GeneratedColumn<String>(
      'message', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _exceptionMeta = const VerificationMeta('exception');
  @override
  late final GeneratedColumn<String> exception = GeneratedColumn<String>(
      'exception', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _stackTraceMeta = const VerificationMeta('stackTrace');
  @override
  late final GeneratedColumn<String> stackTrace = GeneratedColumn<String>(
      'stack_trace', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, time, level, tag, message, exception, stackTrace];
  @override
  String get aliasedName => _alias ?? 'logs';
  @override
  String get actualTableName => 'logs';
  @override
  VerificationContext validateIntegrity(Insertable<Log> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('tag')) {
      context.handle(
          _tagMeta, tag.isAcceptableOrUnknown(data['tag']!, _tagMeta));
    } else if (isInserting) {
      context.missing(_tagMeta);
    }
    if (data.containsKey('message')) {
      context.handle(_messageMeta,
          message.isAcceptableOrUnknown(data['message']!, _messageMeta));
    } else if (isInserting) {
      context.missing(_messageMeta);
    }
    if (data.containsKey('exception')) {
      context.handle(_exceptionMeta,
          exception.isAcceptableOrUnknown(data['exception']!, _exceptionMeta));
    }
    if (data.containsKey('stack_trace')) {
      context.handle(
          _stackTraceMeta,
          stackTrace.isAcceptableOrUnknown(
              data['stack_trace']!, _stackTraceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Log map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Log(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      time: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}time'])!,
      level: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}level'])!,
      tag: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}tag'])!,
      message: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}message'])!,
      exception: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}exception']),
      stackTrace: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}stack_trace']),
    );
  }

  @override
  $LogsTable createAlias(String alias) {
    return $LogsTable(attachedDatabase, alias);
  }
}

abstract class _$LogDatabase extends GeneratedDatabase {
  _$LogDatabase(QueryExecutor e) : super(e);
  _$LogDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $LogsTable logs = $LogsTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [logs];
}
