import '../database.dart';

class MyarrayviewTable extends SupabaseTable<MyarrayviewRow> {
  @override
  String get tableName => 'myarrayview';

  @override
  MyarrayviewRow createRow(Map<String, dynamic> data) => MyarrayviewRow(data);
}

class MyarrayviewRow extends SupabaseDataRow {
  MyarrayviewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MyarrayviewTable();

  List<String> get arrayAgg => getListField<String>('array_agg');
  set arrayAgg(List<String>? value) => setListField<String>('array_agg', value);
}
