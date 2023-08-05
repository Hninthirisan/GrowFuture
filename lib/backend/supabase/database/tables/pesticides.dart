import '../database.dart';

class PesticidesTable extends SupabaseTable<PesticidesRow> {
  @override
  String get tableName => 'pesticides';

  @override
  PesticidesRow createRow(Map<String, dynamic> data) => PesticidesRow(data);
}

class PesticidesRow extends SupabaseDataRow {
  PesticidesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PesticidesTable();

  String get pesticideid => getField<String>('pesticideid')!;
  set pesticideid(String value) => setField<String>('pesticideid', value);

  String? get englishname => getField<String>('englishname');
  set englishname(String? value) => setField<String>('englishname', value);

  String? get burmesename => getField<String>('burmesename');
  set burmesename(String? value) => setField<String>('burmesename', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  List<String> get nutrientid => getListField<String>('nutrientid');
  set nutrientid(List<String>? value) =>
      setListField<String>('nutrientid', value);

  List<String> get usableinsectid => getListField<String>('usableinsectid')!;
  set usableinsectid(List<String> value) =>
      setListField<String>('usableinsectid', value);

  int? get treatmentinterval => getField<int>('treatmentinterval');
  set treatmentinterval(int? value) =>
      setField<int>('treatmentinterval', value);

  String? get treatmentintervalunit =>
      getField<String>('treatmentintervalunit');
  set treatmentintervalunit(String? value) =>
      setField<String>('treatmentintervalunit', value);

  int? get treatmentamout => getField<int>('treatmentamout');
  set treatmentamout(int? value) => setField<int>('treatmentamout', value);

  int? get severitytosoil => getField<int>('severitytosoil');
  set severitytosoil(int? value) => setField<int>('severitytosoil', value);

  int? get severitytoplants => getField<int>('severitytoplants');
  set severitytoplants(int? value) => setField<int>('severitytoplants', value);

  String? get keepingprocedure => getField<String>('keepingprocedure');
  set keepingprocedure(String? value) =>
      setField<String>('keepingprocedure', value);

  String? get mintemperature => getField<String>('mintemperature');
  set mintemperature(String? value) =>
      setField<String>('mintemperature', value);

  String? get maxtemperature => getField<String>('maxtemperature');
  set maxtemperature(String? value) =>
      setField<String>('maxtemperature', value);

  String? get recoverymethod => getField<String>('recoverymethod');
  set recoverymethod(String? value) =>
      setField<String>('recoverymethod', value);

  String? get generalknowledge => getField<String>('generalknowledge');
  set generalknowledge(String? value) =>
      setField<String>('generalknowledge', value);

  int? get effectiveness => getField<int>('effectiveness');
  set effectiveness(int? value) => setField<int>('effectiveness', value);

  String? get treatment => getField<String>('treatment');
  set treatment(String? value) => setField<String>('treatment', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  List<String> get usableindoorplant =>
      getListField<String>('usableindoorplant')!;
  set usableindoorplant(List<String> value) =>
      setListField<String>('usableindoorplant', value);

  List<String> get usableoutdoorplant =>
      getListField<String>('usableoutdoorplant')!;
  set usableoutdoorplant(List<String> value) =>
      setListField<String>('usableoutdoorplant', value);

  List<String> get usablecrop => getListField<String>('usablecrop')!;
  set usablecrop(List<String> value) =>
      setListField<String>('usablecrop', value);

  List<String> get usablevegetables =>
      getListField<String>('usablevegetables')!;
  set usablevegetables(List<String> value) =>
      setListField<String>('usablevegetables', value);

  List<String> get usablefruit => getListField<String>('usablefruit')!;
  set usablefruit(List<String> value) =>
      setListField<String>('usablefruit', value);
}
