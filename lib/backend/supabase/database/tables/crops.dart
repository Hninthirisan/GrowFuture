import '../database.dart';

class CropsTable extends SupabaseTable<CropsRow> {
  @override
  String get tableName => 'crops';

  @override
  CropsRow createRow(Map<String, dynamic> data) => CropsRow(data);
}

class CropsRow extends SupabaseDataRow {
  CropsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CropsTable();

  String get cropid => getField<String>('cropid')!;
  set cropid(String value) => setField<String>('cropid', value);

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

  List<String> get fertilizerid => getListField<String>('fertilizerid')!;
  set fertilizerid(List<String> value) =>
      setListField<String>('fertilizerid', value);

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

  List<String> get weatherconditionid =>
      getListField<String>('weatherconditionid');
  set weatherconditionid(List<String>? value) =>
      setListField<String>('weatherconditionid', value);

  int? get minphlevel => getField<int>('minphlevel');
  set minphlevel(int? value) => setField<int>('minphlevel', value);

  int? get maxphlevel => getField<int>('maxphlevel');
  set maxphlevel(int? value) => setField<int>('maxphlevel', value);

  int? get mindepth => getField<int>('mindepth');
  set mindepth(int? value) => setField<int>('mindepth', value);

  int? get maxdepth => getField<int>('maxdepth');
  set maxdepth(int? value) => setField<int>('maxdepth', value);

  String? get depthunit => getField<String>('depthunit');
  set depthunit(String? value) => setField<String>('depthunit', value);

  List<String> get nutrientid => getListField<String>('nutrientid');
  set nutrientid(List<String>? value) =>
      setListField<String>('nutrientid', value);

  int? get minmoisture => getField<int>('minmoisture');
  set minmoisture(int? value) => setField<int>('minmoisture', value);

  int? get maxmoisture => getField<int>('maxmoisture');
  set maxmoisture(int? value) => setField<int>('maxmoisture', value);

  int? get minlinespacing => getField<int>('minlinespacing');
  set minlinespacing(int? value) => setField<int>('minlinespacing', value);

  int? get maxlinespacing => getField<int>('maxlinespacing');
  set maxlinespacing(int? value) => setField<int>('maxlinespacing', value);

  String? get linespacingunit => getField<String>('linespacingunit');
  set linespacingunit(String? value) =>
      setField<String>('linespacingunit', value);

  List<String> get togrownextid => getListField<String>('togrownextid')!;
  set togrownextid(List<String> value) =>
      setListField<String>('togrownextid', value);

  String? get generalknowledge => getField<String>('generalknowledge');
  set generalknowledge(String? value) =>
      setField<String>('generalknowledge', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
