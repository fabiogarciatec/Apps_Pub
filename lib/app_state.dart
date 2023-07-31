import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _docAuth = await secureStorage.getString('ff_docAuth') ?? _docAuth;
    });
    await _safeInitAsync(() async {
      _cdo205 = await secureStorage.getInt('ff_cdo205') ?? _cdo205;
    });
    await _safeInitAsync(() async {
      _cod206 = await secureStorage.getInt('ff_cod206') ?? _cod206;
    });
    await _safeInitAsync(() async {
      _cod204 = await secureStorage.getInt('ff_cod204') ?? _cod204;
    });
    await _safeInitAsync(() async {
      _cod203 = await secureStorage.getInt('ff_cod203') ?? _cod203;
    });
    await _safeInitAsync(() async {
      _cod202 = await secureStorage.getInt('ff_cod202') ?? _cod202;
    });
    await _safeInitAsync(() async {
      _cod201 = await secureStorage.getInt('ff_cod201') ?? _cod201;
    });
    await _safeInitAsync(() async {
      _cod207 = await secureStorage.getInt('ff_cod207') ?? _cod207;
    });
    await _safeInitAsync(() async {
      _cod208 = await secureStorage.getInt('ff_cod208') ?? _cod208;
    });
    await _safeInitAsync(() async {
      _cod209 = await secureStorage.getInt('ff_cod209') ?? _cod209;
    });
    await _safeInitAsync(() async {
      _cod210 = await secureStorage.getInt('ff_cod210') ?? _cod210;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_JsonProdutos') != null) {
        try {
          _JsonProdutos = jsonDecode(
              await secureStorage.getString('ff_JsonProdutos') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_jsonPontos') != null) {
        try {
          _jsonPontos =
              jsonDecode(await secureStorage.getString('ff_jsonPontos') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_jsonClientes') != null) {
        try {
          _jsonClientes = jsonDecode(
              await secureStorage.getString('ff_jsonClientes') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_jsonSaldo') != null) {
        try {
          _jsonSaldo =
              jsonDecode(await secureStorage.getString('ff_jsonSaldo') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _zero = await secureStorage.getInt('ff_zero') ?? _zero;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_JasonNacimento') != null) {
        try {
          _JasonNacimento = jsonDecode(
              await secureStorage.getString('ff_JasonNacimento') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _cod100 = await secureStorage.getInt('ff_cod100') ?? _cod100;
    });
    await _safeInitAsync(() async {
      _passwordPadrao =
          await secureStorage.getString('ff_passwordPadrao') ?? _passwordPadrao;
    });
    await _safeInitAsync(() async {
      _dataNascimento =
          await secureStorage.getString('ff_dataNascimento') ?? _dataNascimento;
    });
    await _safeInitAsync(() async {
      _Arroba = await secureStorage.getString('ff_Arroba') ?? _Arroba;
    });
    await _safeInitAsync(() async {
      _dataIgual = await secureStorage.getString('ff_dataIgual') ?? _dataIgual;
    });
    await _safeInitAsync(() async {
      _dataVlPontos =
          await secureStorage.getString('ff_dataVlPontos') ?? _dataVlPontos;
    });
    await _safeInitAsync(() async {
      _aceiteTermo =
          await secureStorage.getBool('ff_aceiteTermo') ?? _aceiteTermo;
    });
    await _safeInitAsync(() async {
      _TRFROOTS = await secureStorage.getString('ff_TRFROOTS') ?? _TRFROOTS;
    });
    await _safeInitAsync(() async {
      _multpleUser = (await secureStorage.getStringList('ff_multpleUser'))
              ?.map((path) => path.ref)
              .toList() ??
          _multpleUser;
    });
    await _safeInitAsync(() async {
      _singleUser =
          (await secureStorage.getString('ff_singleUser'))?.ref ?? _singleUser;
    });
    await _safeInitAsync(() async {
      _jsonPecas =
          (await secureStorage.getStringList('ff_jsonPecas'))?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _jsonPecas;
    });
    await _safeInitAsync(() async {
      _searsh = await secureStorage.getString('ff_searsh') ?? _searsh;
    });
    await _safeInitAsync(() async {
      _uidUser = await secureStorage.getString('ff_uidUser') ?? _uidUser;
    });
    await _safeInitAsync(() async {
      _DocReference =
          await secureStorage.getString('ff_DocReference') ?? _DocReference;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _docAuth = '';
  String get docAuth => _docAuth;
  set docAuth(String _value) {
    _docAuth = _value;
    secureStorage.setString('ff_docAuth', _value);
  }

  void deleteDocAuth() {
    secureStorage.delete(key: 'ff_docAuth');
  }

  int _cdo205 = 205;
  int get cdo205 => _cdo205;
  set cdo205(int _value) {
    _cdo205 = _value;
    secureStorage.setInt('ff_cdo205', _value);
  }

  void deleteCdo205() {
    secureStorage.delete(key: 'ff_cdo205');
  }

  int _cod206 = 206;
  int get cod206 => _cod206;
  set cod206(int _value) {
    _cod206 = _value;
    secureStorage.setInt('ff_cod206', _value);
  }

  void deleteCod206() {
    secureStorage.delete(key: 'ff_cod206');
  }

  int _cod204 = 204;
  int get cod204 => _cod204;
  set cod204(int _value) {
    _cod204 = _value;
    secureStorage.setInt('ff_cod204', _value);
  }

  void deleteCod204() {
    secureStorage.delete(key: 'ff_cod204');
  }

  int _cod203 = 203;
  int get cod203 => _cod203;
  set cod203(int _value) {
    _cod203 = _value;
    secureStorage.setInt('ff_cod203', _value);
  }

  void deleteCod203() {
    secureStorage.delete(key: 'ff_cod203');
  }

  int _cod202 = 202;
  int get cod202 => _cod202;
  set cod202(int _value) {
    _cod202 = _value;
    secureStorage.setInt('ff_cod202', _value);
  }

  void deleteCod202() {
    secureStorage.delete(key: 'ff_cod202');
  }

  int _cod201 = 201;
  int get cod201 => _cod201;
  set cod201(int _value) {
    _cod201 = _value;
    secureStorage.setInt('ff_cod201', _value);
  }

  void deleteCod201() {
    secureStorage.delete(key: 'ff_cod201');
  }

  int _cod207 = 207;
  int get cod207 => _cod207;
  set cod207(int _value) {
    _cod207 = _value;
    secureStorage.setInt('ff_cod207', _value);
  }

  void deleteCod207() {
    secureStorage.delete(key: 'ff_cod207');
  }

  int _cod208 = 208;
  int get cod208 => _cod208;
  set cod208(int _value) {
    _cod208 = _value;
    secureStorage.setInt('ff_cod208', _value);
  }

  void deleteCod208() {
    secureStorage.delete(key: 'ff_cod208');
  }

  int _cod209 = 209;
  int get cod209 => _cod209;
  set cod209(int _value) {
    _cod209 = _value;
    secureStorage.setInt('ff_cod209', _value);
  }

  void deleteCod209() {
    secureStorage.delete(key: 'ff_cod209');
  }

  int _cod210 = 210;
  int get cod210 => _cod210;
  set cod210(int _value) {
    _cod210 = _value;
    secureStorage.setInt('ff_cod210', _value);
  }

  void deleteCod210() {
    secureStorage.delete(key: 'ff_cod210');
  }

  dynamic _JsonProdutos;
  dynamic get JsonProdutos => _JsonProdutos;
  set JsonProdutos(dynamic _value) {
    _JsonProdutos = _value;
    secureStorage.setString('ff_JsonProdutos', jsonEncode(_value));
  }

  void deleteJsonProdutos() {
    secureStorage.delete(key: 'ff_JsonProdutos');
  }

  dynamic _jsonPontos;
  dynamic get jsonPontos => _jsonPontos;
  set jsonPontos(dynamic _value) {
    _jsonPontos = _value;
    secureStorage.setString('ff_jsonPontos', jsonEncode(_value));
  }

  void deleteJsonPontos() {
    secureStorage.delete(key: 'ff_jsonPontos');
  }

  dynamic _jsonClientes;
  dynamic get jsonClientes => _jsonClientes;
  set jsonClientes(dynamic _value) {
    _jsonClientes = _value;
    secureStorage.setString('ff_jsonClientes', jsonEncode(_value));
  }

  void deleteJsonClientes() {
    secureStorage.delete(key: 'ff_jsonClientes');
  }

  dynamic _jsonSaldo;
  dynamic get jsonSaldo => _jsonSaldo;
  set jsonSaldo(dynamic _value) {
    _jsonSaldo = _value;
    secureStorage.setString('ff_jsonSaldo', jsonEncode(_value));
  }

  void deleteJsonSaldo() {
    secureStorage.delete(key: 'ff_jsonSaldo');
  }

  int _zero = 0;
  int get zero => _zero;
  set zero(int _value) {
    _zero = _value;
    secureStorage.setInt('ff_zero', _value);
  }

  void deleteZero() {
    secureStorage.delete(key: 'ff_zero');
  }

  dynamic _JasonNacimento =
      jsonDecode('{\"data_nascimento\":\"1981-02-19T00:00:00\"}');
  dynamic get JasonNacimento => _JasonNacimento;
  set JasonNacimento(dynamic _value) {
    _JasonNacimento = _value;
    secureStorage.setString('ff_JasonNacimento', jsonEncode(_value));
  }

  void deleteJasonNacimento() {
    secureStorage.delete(key: 'ff_JasonNacimento');
  }

  int _cod100 = 100;
  int get cod100 => _cod100;
  set cod100(int _value) {
    _cod100 = _value;
    secureStorage.setInt('ff_cod100', _value);
  }

  void deleteCod100() {
    secureStorage.delete(key: 'ff_cod100');
  }

  String _passwordPadrao = '123456';
  String get passwordPadrao => _passwordPadrao;
  set passwordPadrao(String _value) {
    _passwordPadrao = _value;
    secureStorage.setString('ff_passwordPadrao', _value);
  }

  void deletePasswordPadrao() {
    secureStorage.delete(key: 'ff_passwordPadrao');
  }

  String _dataNascimento = '';
  String get dataNascimento => _dataNascimento;
  set dataNascimento(String _value) {
    _dataNascimento = _value;
    secureStorage.setString('ff_dataNascimento', _value);
  }

  void deleteDataNascimento() {
    secureStorage.delete(key: 'ff_dataNascimento');
  }

  String _Arroba = '@';
  String get Arroba => _Arroba;
  set Arroba(String _value) {
    _Arroba = _value;
    secureStorage.setString('ff_Arroba', _value);
  }

  void deleteArroba() {
    secureStorage.delete(key: 'ff_Arroba');
  }

  String _dataIgual = '1000-01-01';
  String get dataIgual => _dataIgual;
  set dataIgual(String _value) {
    _dataIgual = _value;
    secureStorage.setString('ff_dataIgual', _value);
  }

  void deleteDataIgual() {
    secureStorage.delete(key: 'ff_dataIgual');
  }

  String _dataVlPontos = '00/00/0000';
  String get dataVlPontos => _dataVlPontos;
  set dataVlPontos(String _value) {
    _dataVlPontos = _value;
    secureStorage.setString('ff_dataVlPontos', _value);
  }

  void deleteDataVlPontos() {
    secureStorage.delete(key: 'ff_dataVlPontos');
  }

  bool _aceiteTermo = false;
  bool get aceiteTermo => _aceiteTermo;
  set aceiteTermo(bool _value) {
    _aceiteTermo = _value;
    secureStorage.setBool('ff_aceiteTermo', _value);
  }

  void deleteAceiteTermo() {
    secureStorage.delete(key: 'ff_aceiteTermo');
  }

  String _TRFROOTS = 'TRF-ROOTS';
  String get TRFROOTS => _TRFROOTS;
  set TRFROOTS(String _value) {
    _TRFROOTS = _value;
    secureStorage.setString('ff_TRFROOTS', _value);
  }

  void deleteTRFROOTS() {
    secureStorage.delete(key: 'ff_TRFROOTS');
  }

  List<DocumentReference> _multpleUser = [];
  List<DocumentReference> get multpleUser => _multpleUser;
  set multpleUser(List<DocumentReference> _value) {
    _multpleUser = _value;
    secureStorage.setStringList(
        'ff_multpleUser', _value.map((x) => x.path).toList());
  }

  void deleteMultpleUser() {
    secureStorage.delete(key: 'ff_multpleUser');
  }

  void addToMultpleUser(DocumentReference _value) {
    _multpleUser.add(_value);
    secureStorage.setStringList(
        'ff_multpleUser', _multpleUser.map((x) => x.path).toList());
  }

  void removeFromMultpleUser(DocumentReference _value) {
    _multpleUser.remove(_value);
    secureStorage.setStringList(
        'ff_multpleUser', _multpleUser.map((x) => x.path).toList());
  }

  void removeAtIndexFromMultpleUser(int _index) {
    _multpleUser.removeAt(_index);
    secureStorage.setStringList(
        'ff_multpleUser', _multpleUser.map((x) => x.path).toList());
  }

  void updateMultpleUserAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _multpleUser[_index] = updateFn(_multpleUser[_index]);
    secureStorage.setStringList(
        'ff_multpleUser', _multpleUser.map((x) => x.path).toList());
  }

  DocumentReference? _singleUser =
      FirebaseFirestore.instance.doc('/Users/Xa3xv5LMvcQBfLITtJxnMYAPwdl2');
  DocumentReference? get singleUser => _singleUser;
  set singleUser(DocumentReference? _value) {
    _singleUser = _value;
    _value != null
        ? secureStorage.setString('ff_singleUser', _value.path)
        : secureStorage.remove('ff_singleUser');
  }

  void deleteSingleUser() {
    secureStorage.delete(key: 'ff_singleUser');
  }

  List<dynamic> _jsonPecas = [];
  List<dynamic> get jsonPecas => _jsonPecas;
  set jsonPecas(List<dynamic> _value) {
    _jsonPecas = _value;
    secureStorage.setStringList(
        'ff_jsonPecas', _value.map((x) => jsonEncode(x)).toList());
  }

  void deleteJsonPecas() {
    secureStorage.delete(key: 'ff_jsonPecas');
  }

  void addToJsonPecas(dynamic _value) {
    _jsonPecas.add(_value);
    secureStorage.setStringList(
        'ff_jsonPecas', _jsonPecas.map((x) => jsonEncode(x)).toList());
  }

  void removeFromJsonPecas(dynamic _value) {
    _jsonPecas.remove(_value);
    secureStorage.setStringList(
        'ff_jsonPecas', _jsonPecas.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromJsonPecas(int _index) {
    _jsonPecas.removeAt(_index);
    secureStorage.setStringList(
        'ff_jsonPecas', _jsonPecas.map((x) => jsonEncode(x)).toList());
  }

  void updateJsonPecasAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _jsonPecas[_index] = updateFn(_jsonPecas[_index]);
    secureStorage.setStringList(
        'ff_jsonPecas', _jsonPecas.map((x) => jsonEncode(x)).toList());
  }

  String _searsh = '';
  String get searsh => _searsh;
  set searsh(String _value) {
    _searsh = _value;
    secureStorage.setString('ff_searsh', _value);
  }

  void deleteSearsh() {
    secureStorage.delete(key: 'ff_searsh');
  }

  String _uidUser = '';
  String get uidUser => _uidUser;
  set uidUser(String _value) {
    _uidUser = _value;
    secureStorage.setString('ff_uidUser', _value);
  }

  void deleteUidUser() {
    secureStorage.delete(key: 'ff_uidUser');
  }

  String _DocReference = '';
  String get DocReference => _DocReference;
  set DocReference(String _value) {
    _DocReference = _value;
    secureStorage.setString('ff_DocReference', _value);
  }

  void deleteDocReference() {
    secureStorage.delete(key: 'ff_DocReference');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
