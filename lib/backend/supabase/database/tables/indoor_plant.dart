import '../database.dart';

class IndoorPlantTable extends SupabaseTable<IndoorPlantRow> {
  @override
  String get tableName => 'indoorPlant';

  @override
  IndoorPlantRow createRow(Map<String, dynamic> data) => IndoorPlantRow(data);
}

class IndoorPlantRow extends SupabaseDataRow {
  IndoorPlantRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IndoorPlantTable();

  String get indoorplantid => getField<String>('indoorplantid')!;
  set indoorplantid(String value) => setField<String>('indoorplantid', value);

  String? get englishname => getField<String>('englishname');
  set englishname(String? value) => setField<String>('englishname', value);

  String? get burmesename => getField<String>('burmesename');
  set burmesename(String? value) => setField<String>('burmesename', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  List<String> get soilid => getListField<String>('soilid');
  set soilid(List<String>? value) => setListField<String>('soilid', value);

  int? get wateringinterval => getField<int>('wateringinterval');
  set wateringinterval(int? value) => setField<int>('wateringinterval', value);

  String? get wateringintervalunit => getField<String>('wateringintervalunit');
  set wateringintervalunit(String? value) =>
      setField<String>('wateringintervalunit', value);

  int? get wateringamout => getField<int>('wateringamout');
  set wateringamout(int? value) => setField<int>('wateringamout', value);

  int? get fertilizinginterval => getField<int>('fertilizinginterval');
  set fertilizinginterval(int? value) =>
      setField<int>('fertilizinginterval', value);

  String? get fertilizingintervalunit =>
      getField<String>('fertilizingintervalunit');
  set fertilizingintervalunit(String? value) =>
      setField<String>('fertilizingintervalunit', value);

  List<String> get insectid => getListField<String>('insectid')!;
  set insectid(List<String> value) => setListField<String>('insectid', value);

  int? get maxtemperature => getField<int>('maxtemperature');
  set maxtemperature(int? value) => setField<int>('maxtemperature', value);

  int? get mintemperature => getField<int>('mintemperature');
  set mintemperature(int? value) => setField<int>('mintemperature', value);

  int? get caringinterval => getField<int>('caringinterval');
  set caringinterval(int? value) => setField<int>('caringinterval', value);

  String? get caringintervalunit => getField<String>('caringintervalunit');
  set caringintervalunit(String? value) =>
      setField<String>('caringintervalunit', value);

  String? get airflow => getField<String>('airflow');
  set airflow(String? value) => setField<String>('airflow', value);

  String? get generalknowledge => getField<String>('generalknowledge');
  set generalknowledge(String? value) =>
      setField<String>('generalknowledge', value);

  int? get lightlevel => getField<int>('lightlevel');
  set lightlevel(int? value) => setField<int>('lightlevel', value);

  String? get lightlevelunit => getField<String>('lightlevelunit');
  set lightlevelunit(String? value) =>
      setField<String>('lightlevelunit', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  List<String> get fertilizerid => getListField<String>('fertilizerid')!;
  set fertilizerid(List<String> value) =>
      setListField<String>('fertilizerid', value);

  String? get indoorid => getField<String>('indoorid');
  set indoorid(String? value) => setField<String>('indoorid', value);
}
