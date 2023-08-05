import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get userid => getField<String>('userid')!;
  set userid(String value) => setField<String>('userid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get usertype => getField<String>('usertype');
  set usertype(String? value) => setField<String>('usertype', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
