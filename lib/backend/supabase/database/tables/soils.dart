import '../database.dart';

class SoilsTable extends SupabaseTable<SoilsRow> {
  @override
  String get tableName => 'soils';

  @override
  SoilsRow createRow(Map<String, dynamic> data) => SoilsRow(data);
}

class SoilsRow extends SupabaseDataRow {
  SoilsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SoilsTable();

  String get soilid => getField<String>('soilid')!;
  set soilid(String value) => setField<String>('soilid', value);

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

  List<String> get indoorplantid => getListField<String>('indoorplantid');
  set indoorplantid(List<String>? value) =>
      setListField<String>('indoorplantid', value);

  List<String> get outdoorplantid => getListField<String>('outdoorplantid');
  set outdoorplantid(List<String>? value) =>
      setListField<String>('outdoorplantid', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
