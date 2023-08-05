import '../database.dart';

class NutrientsTable extends SupabaseTable<NutrientsRow> {
  @override
  String get tableName => 'nutrients';

  @override
  NutrientsRow createRow(Map<String, dynamic> data) => NutrientsRow(data);
}

class NutrientsRow extends SupabaseDataRow {
  NutrientsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NutrientsTable();

  String get nutrientid => getField<String>('nutrientid')!;
  set nutrientid(String value) => setField<String>('nutrientid', value);

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

  List<String> get fertilizerid => getListField<String>('fertilizerid');
  set fertilizerid(List<String>? value) =>
      setListField<String>('fertilizerid', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  List<String> get pesticideid => getListField<String>('pesticideid');
  set pesticideid(List<String>? value) =>
      setListField<String>('pesticideid', value);
}
