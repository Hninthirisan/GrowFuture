import '../database.dart';

class InsectsTable extends SupabaseTable<InsectsRow> {
  @override
  String get tableName => 'insects';

  @override
  InsectsRow createRow(Map<String, dynamic> data) => InsectsRow(data);
}

class InsectsRow extends SupabaseDataRow {
  InsectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InsectsTable();

  String get insectid => getField<String>('insectid')!;
  set insectid(String value) => setField<String>('insectid', value);

  String? get englishname => getField<String>('englishname');
  set englishname(String? value) => setField<String>('englishname', value);

  String? get burmesename => getField<String>('burmesename');
  set burmesename(String? value) => setField<String>('burmesename', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  int? get severity => getField<int>('severity');
  set severity(int? value) => setField<int>('severity', value);

  int? get risklevel => getField<int>('risklevel');
  set risklevel(int? value) => setField<int>('risklevel', value);

  int? get totakeaction => getField<int>('totakeaction');
  set totakeaction(int? value) => setField<int>('totakeaction', value);

  int? get treatmentinterval => getField<int>('treatmentinterval');
  set treatmentinterval(int? value) =>
      setField<int>('treatmentinterval', value);

  String? get treatmentintervalunit =>
      getField<String>('treatmentintervalunit');
  set treatmentintervalunit(String? value) =>
      setField<String>('treatmentintervalunit', value);

  int? get treatmentamout => getField<int>('treatmentamout');
  set treatmentamout(int? value) => setField<int>('treatmentamout', value);

  String? get occurance => getField<String>('occurance');
  set occurance(String? value) => setField<String>('occurance', value);

  List<String> get pesticideid => getListField<String>('pesticideid')!;
  set pesticideid(List<String> value) =>
      setListField<String>('pesticideid', value);

  List<String> get favoriteweatherid =>
      getListField<String>('favoriteweatherid');
  set favoriteweatherid(List<String>? value) =>
      setListField<String>('favoriteweatherid', value);

  String? get generalkowledge => getField<String>('generalkowledge');
  set generalkowledge(String? value) =>
      setField<String>('generalkowledge', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  List<String> get favoriteindoorplant =>
      getListField<String>('favoriteindoorplant')!;
  set favoriteindoorplant(List<String> value) =>
      setListField<String>('favoriteindoorplant', value);

  List<String> get favoriteoutdoorplant =>
      getListField<String>('favoriteoutdoorplant')!;
  set favoriteoutdoorplant(List<String> value) =>
      setListField<String>('favoriteoutdoorplant', value);

  List<String> get favoritecrop => getListField<String>('favoritecrop')!;
  set favoritecrop(List<String> value) =>
      setListField<String>('favoritecrop', value);

  List<String> get favoritevegetable =>
      getListField<String>('favoritevegetable')!;
  set favoritevegetable(List<String> value) =>
      setListField<String>('favoritevegetable', value);

  List<String> get favoritefruit => getListField<String>('favoritefruit')!;
  set favoritefruit(List<String> value) =>
      setListField<String>('favoritefruit', value);
}
