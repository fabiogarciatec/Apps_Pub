import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "data_nascimento" field.
  String? _dataNascimento;
  String get dataNascimento => _dataNascimento ?? '';
  bool hasDataNascimento() => _dataNascimento != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  bool hasDocumento() => _documento != null;

  // "codvalepontos" field.
  String? _codvalepontos;
  String get codvalepontos => _codvalepontos ?? '';
  bool hasCodvalepontos() => _codvalepontos != null;

  // "pontosvale" field.
  double? _pontosvale;
  double get pontosvale => _pontosvale ?? 0.0;
  bool hasPontosvale() => _pontosvale != null;

  // "dtInclusaoVale" field.
  String? _dtInclusaoVale;
  String get dtInclusaoVale => _dtInclusaoVale ?? '';
  bool hasDtInclusaoVale() => _dtInclusaoVale != null;

  // "aceiteTermo" field.
  bool? _aceiteTermo;
  bool get aceiteTermo => _aceiteTermo ?? false;
  bool hasAceiteTermo() => _aceiteTermo != null;

  // "valorVale" field.
  double? _valorVale;
  double get valorVale => _valorVale ?? 0.0;
  bool hasValorVale() => _valorVale != null;

  // "motivoVale" field.
  String? _motivoVale;
  String get motivoVale => _motivoVale ?? '';
  bool hasMotivoVale() => _motivoVale != null;

  // "SuperAdmin" field.
  bool? _superAdmin;
  bool get superAdmin => _superAdmin ?? false;
  bool hasSuperAdmin() => _superAdmin != null;

  // "imagem_vale" field.
  String? _imagemVale;
  String get imagemVale => _imagemVale ?? '';
  bool hasImagemVale() => _imagemVale != null;

  // "qtd_item_resgate" field.
  int? _qtdItemResgate;
  int get qtdItemResgate => _qtdItemResgate ?? 0;
  bool hasQtdItemResgate() => _qtdItemResgate != null;

  // "sku_item" field.
  String? _skuItem;
  String get skuItem => _skuItem ?? '';
  bool hasSkuItem() => _skuItem != null;

  // "dataCadastro" field.
  String? _dataCadastro;
  String get dataCadastro => _dataCadastro ?? '';
  bool hasDataCadastro() => _dataCadastro != null;

  // "dataMovimento" field.
  String? _dataMovimento;
  String get dataMovimento => _dataMovimento ?? '';
  bool hasDataMovimento() => _dataMovimento != null;

  // "saldRoot" field.
  String? _saldRoot;
  String get saldRoot => _saldRoot ?? '';
  bool hasSaldRoot() => _saldRoot != null;

  // "tipoUsuario" field.
  String? _tipoUsuario;
  String get tipoUsuario => _tipoUsuario ?? '';
  bool hasTipoUsuario() => _tipoUsuario != null;

  // "minhasCompras" field.
  bool? _minhasCompras;
  bool get minhasCompras => _minhasCompras ?? false;
  bool hasMinhasCompras() => _minhasCompras != null;

  // "minhasFaturas" field.
  bool? _minhasFaturas;
  bool get minhasFaturas => _minhasFaturas ?? false;
  bool hasMinhasFaturas() => _minhasFaturas != null;

  // "minhasMaquinas" field.
  bool? _minhasMaquinas;
  bool get minhasMaquinas => _minhasMaquinas ?? false;
  bool hasMinhasMaquinas() => _minhasMaquinas != null;

  // "meusOrcamentos" field.
  bool? _meusOrcamentos;
  bool get meusOrcamentos => _meusOrcamentos ?? false;
  bool hasMeusOrcamentos() => _meusOrcamentos != null;

  // "revisoesAgendadas" field.
  bool? _revisoesAgendadas;
  bool get revisoesAgendadas => _revisoesAgendadas ?? false;
  bool hasRevisoesAgendadas() => _revisoesAgendadas != null;

  // "enviarhorimetro" field.
  bool? _enviarhorimetro;
  bool get enviarhorimetro => _enviarhorimetro ?? false;
  bool hasEnviarhorimetro() => _enviarhorimetro != null;

  // "transferirRoots" field.
  bool? _transferirRoots;
  bool get transferirRoots => _transferirRoots ?? false;
  bool hasTransferirRoots() => _transferirRoots != null;

  // "indiqueGanhe" field.
  bool? _indiqueGanhe;
  bool get indiqueGanhe => _indiqueGanhe ?? false;
  bool hasIndiqueGanhe() => _indiqueGanhe != null;

  // "criarCampanhas" field.
  bool? _criarCampanhas;
  bool get criarCampanhas => _criarCampanhas ?? false;
  bool hasCriarCampanhas() => _criarCampanhas != null;

  // "deptoPecas" field.
  bool? _deptoPecas;
  bool get deptoPecas => _deptoPecas ?? false;
  bool hasDeptoPecas() => _deptoPecas != null;

  // "deptoServicos" field.
  bool? _deptoServicos;
  bool get deptoServicos => _deptoServicos ?? false;
  bool hasDeptoServicos() => _deptoServicos != null;

  // "deptoComercial" field.
  bool? _deptoComercial;
  bool get deptoComercial => _deptoComercial ?? false;
  bool hasDeptoComercial() => _deptoComercial != null;

  // "deptoAdministracao" field.
  bool? _deptoAdministracao;
  bool get deptoAdministracao => _deptoAdministracao ?? false;
  bool hasDeptoAdministracao() => _deptoAdministracao != null;

  // "diretor" field.
  bool? _diretor;
  bool get diretor => _diretor ?? false;
  bool hasDiretor() => _diretor != null;

  // "gerente" field.
  bool? _gerente;
  bool get gerente => _gerente ?? false;
  bool hasGerente() => _gerente != null;

  // "supervisor" field.
  bool? _supervisor;
  bool get supervisor => _supervisor ?? false;
  bool hasSupervisor() => _supervisor != null;

  // "comprador" field.
  bool? _comprador;
  bool get comprador => _comprador ?? false;
  bool hasComprador() => _comprador != null;

  // "vendedor" field.
  bool? _vendedor;
  bool get vendedor => _vendedor ?? false;
  bool hasVendedor() => _vendedor != null;

  // "administrativo" field.
  bool? _administrativo;
  bool get administrativo => _administrativo ?? false;
  bool hasAdministrativo() => _administrativo != null;

  // "treinamentos" field.
  bool? _treinamentos;
  bool get treinamentos => _treinamentos ?? false;
  bool hasTreinamentos() => _treinamentos != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _sexo = snapshotData['sexo'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _dataNascimento = snapshotData['data_nascimento'] as String?;
    _email = snapshotData['email'] as String?;
    _documento = snapshotData['documento'] as String?;
    _codvalepontos = snapshotData['codvalepontos'] as String?;
    _pontosvale = castToType<double>(snapshotData['pontosvale']);
    _dtInclusaoVale = snapshotData['dtInclusaoVale'] as String?;
    _aceiteTermo = snapshotData['aceiteTermo'] as bool?;
    _valorVale = castToType<double>(snapshotData['valorVale']);
    _motivoVale = snapshotData['motivoVale'] as String?;
    _superAdmin = snapshotData['SuperAdmin'] as bool?;
    _imagemVale = snapshotData['imagem_vale'] as String?;
    _qtdItemResgate = castToType<int>(snapshotData['qtd_item_resgate']);
    _skuItem = snapshotData['sku_item'] as String?;
    _dataCadastro = snapshotData['dataCadastro'] as String?;
    _dataMovimento = snapshotData['dataMovimento'] as String?;
    _saldRoot = snapshotData['saldRoot'] as String?;
    _tipoUsuario = snapshotData['tipoUsuario'] as String?;
    _minhasCompras = snapshotData['minhasCompras'] as bool?;
    _minhasFaturas = snapshotData['minhasFaturas'] as bool?;
    _minhasMaquinas = snapshotData['minhasMaquinas'] as bool?;
    _meusOrcamentos = snapshotData['meusOrcamentos'] as bool?;
    _revisoesAgendadas = snapshotData['revisoesAgendadas'] as bool?;
    _enviarhorimetro = snapshotData['enviarhorimetro'] as bool?;
    _transferirRoots = snapshotData['transferirRoots'] as bool?;
    _indiqueGanhe = snapshotData['indiqueGanhe'] as bool?;
    _criarCampanhas = snapshotData['criarCampanhas'] as bool?;
    _deptoPecas = snapshotData['deptoPecas'] as bool?;
    _deptoServicos = snapshotData['deptoServicos'] as bool?;
    _deptoComercial = snapshotData['deptoComercial'] as bool?;
    _deptoAdministracao = snapshotData['deptoAdministracao'] as bool?;
    _diretor = snapshotData['diretor'] as bool?;
    _gerente = snapshotData['gerente'] as bool?;
    _supervisor = snapshotData['supervisor'] as bool?;
    _comprador = snapshotData['comprador'] as bool?;
    _vendedor = snapshotData['vendedor'] as bool?;
    _administrativo = snapshotData['administrativo'] as bool?;
    _treinamentos = snapshotData['treinamentos'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? uid,
  DateTime? createdTime,
  String? sexo,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  String? dataNascimento,
  String? email,
  String? documento,
  String? codvalepontos,
  double? pontosvale,
  String? dtInclusaoVale,
  bool? aceiteTermo,
  double? valorVale,
  String? motivoVale,
  bool? superAdmin,
  String? imagemVale,
  int? qtdItemResgate,
  String? skuItem,
  String? dataCadastro,
  String? dataMovimento,
  String? saldRoot,
  String? tipoUsuario,
  bool? minhasCompras,
  bool? minhasFaturas,
  bool? minhasMaquinas,
  bool? meusOrcamentos,
  bool? revisoesAgendadas,
  bool? enviarhorimetro,
  bool? transferirRoots,
  bool? indiqueGanhe,
  bool? criarCampanhas,
  bool? deptoPecas,
  bool? deptoServicos,
  bool? deptoComercial,
  bool? deptoAdministracao,
  bool? diretor,
  bool? gerente,
  bool? supervisor,
  bool? comprador,
  bool? vendedor,
  bool? administrativo,
  bool? treinamentos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'created_time': createdTime,
      'sexo': sexo,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'data_nascimento': dataNascimento,
      'email': email,
      'documento': documento,
      'codvalepontos': codvalepontos,
      'pontosvale': pontosvale,
      'dtInclusaoVale': dtInclusaoVale,
      'aceiteTermo': aceiteTermo,
      'valorVale': valorVale,
      'motivoVale': motivoVale,
      'SuperAdmin': superAdmin,
      'imagem_vale': imagemVale,
      'qtd_item_resgate': qtdItemResgate,
      'sku_item': skuItem,
      'dataCadastro': dataCadastro,
      'dataMovimento': dataMovimento,
      'saldRoot': saldRoot,
      'tipoUsuario': tipoUsuario,
      'minhasCompras': minhasCompras,
      'minhasFaturas': minhasFaturas,
      'minhasMaquinas': minhasMaquinas,
      'meusOrcamentos': meusOrcamentos,
      'revisoesAgendadas': revisoesAgendadas,
      'enviarhorimetro': enviarhorimetro,
      'transferirRoots': transferirRoots,
      'indiqueGanhe': indiqueGanhe,
      'criarCampanhas': criarCampanhas,
      'deptoPecas': deptoPecas,
      'deptoServicos': deptoServicos,
      'deptoComercial': deptoComercial,
      'deptoAdministracao': deptoAdministracao,
      'diretor': diretor,
      'gerente': gerente,
      'supervisor': supervisor,
      'comprador': comprador,
      'vendedor': vendedor,
      'administrativo': administrativo,
      'treinamentos': treinamentos,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.sexo == e2?.sexo &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.dataNascimento == e2?.dataNascimento &&
        e1?.email == e2?.email &&
        e1?.documento == e2?.documento &&
        e1?.codvalepontos == e2?.codvalepontos &&
        e1?.pontosvale == e2?.pontosvale &&
        e1?.dtInclusaoVale == e2?.dtInclusaoVale &&
        e1?.aceiteTermo == e2?.aceiteTermo &&
        e1?.valorVale == e2?.valorVale &&
        e1?.motivoVale == e2?.motivoVale &&
        e1?.superAdmin == e2?.superAdmin &&
        e1?.imagemVale == e2?.imagemVale &&
        e1?.qtdItemResgate == e2?.qtdItemResgate &&
        e1?.skuItem == e2?.skuItem &&
        e1?.dataCadastro == e2?.dataCadastro &&
        e1?.dataMovimento == e2?.dataMovimento &&
        e1?.saldRoot == e2?.saldRoot &&
        e1?.tipoUsuario == e2?.tipoUsuario &&
        e1?.minhasCompras == e2?.minhasCompras &&
        e1?.minhasFaturas == e2?.minhasFaturas &&
        e1?.minhasMaquinas == e2?.minhasMaquinas &&
        e1?.meusOrcamentos == e2?.meusOrcamentos &&
        e1?.revisoesAgendadas == e2?.revisoesAgendadas &&
        e1?.enviarhorimetro == e2?.enviarhorimetro &&
        e1?.transferirRoots == e2?.transferirRoots &&
        e1?.indiqueGanhe == e2?.indiqueGanhe &&
        e1?.criarCampanhas == e2?.criarCampanhas &&
        e1?.deptoPecas == e2?.deptoPecas &&
        e1?.deptoServicos == e2?.deptoServicos &&
        e1?.deptoComercial == e2?.deptoComercial &&
        e1?.deptoAdministracao == e2?.deptoAdministracao &&
        e1?.diretor == e2?.diretor &&
        e1?.gerente == e2?.gerente &&
        e1?.supervisor == e2?.supervisor &&
        e1?.comprador == e2?.comprador &&
        e1?.vendedor == e2?.vendedor &&
        e1?.administrativo == e2?.administrativo &&
        e1?.treinamentos == e2?.treinamentos;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.createdTime,
        e?.sexo,
        e?.displayName,
        e?.photoUrl,
        e?.phoneNumber,
        e?.dataNascimento,
        e?.email,
        e?.documento,
        e?.codvalepontos,
        e?.pontosvale,
        e?.dtInclusaoVale,
        e?.aceiteTermo,
        e?.valorVale,
        e?.motivoVale,
        e?.superAdmin,
        e?.imagemVale,
        e?.qtdItemResgate,
        e?.skuItem,
        e?.dataCadastro,
        e?.dataMovimento,
        e?.saldRoot,
        e?.tipoUsuario,
        e?.minhasCompras,
        e?.minhasFaturas,
        e?.minhasMaquinas,
        e?.meusOrcamentos,
        e?.revisoesAgendadas,
        e?.enviarhorimetro,
        e?.transferirRoots,
        e?.indiqueGanhe,
        e?.criarCampanhas,
        e?.deptoPecas,
        e?.deptoServicos,
        e?.deptoComercial,
        e?.deptoAdministracao,
        e?.diretor,
        e?.gerente,
        e?.supervisor,
        e?.comprador,
        e?.vendedor,
        e?.administrativo,
        e?.treinamentos
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
