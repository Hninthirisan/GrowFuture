import '../database.dart';

class WeathersTable extends SupabaseTable<WeathersRow> {
  @override
  String get tableName => 'weathers';

  @override
  WeathersRow createRow(Map<String, dynamic> data) => WeathersRow(data);
}

class WeathersRow extends SupabaseDataRow {
  WeathersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeathersTable();

  String get weatherid => getField<String>('weatherid')!;
  set weatherid(String value) => setField<String>('weatherid', value);

  String? get englishname => getField<String>('englishname');
  set englishname(String? value) => setField<String>('englishname', value);

  String? get burmesename => getField<String>('burmesename');
  set burmesename(String? value) => setField<String>('burmesename', value);

  List<String> get cropid => getListField<String>('cropid');
  set cropid(List<String>? value) => setListField<String>('cropid', value);

  List<String> get vegetableid => getListField<String>('vegetableid');
  set vegetableid(List<String>? value) =>
      setListField<String>('vegetableid', value);

  List<String> get fruitid => getListField<String>('fruitid');
  set fruitid(List<String>? value) => setListField<String>('fruitid', value);

  List<String> get insectid => getListField<String>('insectid');
  set insectid(List<String>? value) => setListField<String>('insectid', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
