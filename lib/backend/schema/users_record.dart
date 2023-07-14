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

  // "proprietario" field.
  bool? _proprietario;
  bool get proprietario => _proprietario ?? false;
  bool hasProprietario() => _proprietario != null;

  // "operador" field.
  bool? _operador;
  bool get operador => _operador ?? false;
  bool hasOperador() => _operador != null;

  // "padrao" field.
  bool? _padrao;
  bool get padrao => _padrao ?? false;
  bool hasPadrao() => _padrao != null;

  // "representante" field.
  bool? _representante;
  bool get representante => _representante ?? false;
  bool hasRepresentante() => _representante != null;

  // "mecanico" field.
  bool? _mecanico;
  bool get mecanico => _mecanico ?? false;
  bool hasMecanico() => _mecanico != null;

  // "assinante" field.
  bool? _assinante;
  bool get assinante => _assinante ?? false;
  bool hasAssinante() => _assinante != null;

  // "indicacao" field.
  bool? _indicacao;
  bool get indicacao => _indicacao ?? false;
  bool hasIndicacao() => _indicacao != null;

  // "cashback" field.
  bool? _cashback;
  bool get cashback => _cashback ?? false;
  bool hasCashback() => _cashback != null;

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

  // "funcionario" field.
  bool? _funcionario;
  bool get funcionario => _funcionario ?? false;
  bool hasFuncionario() => _funcionario != null;

  // "SuperAdmin" field.
  bool? _superAdmin;
  bool get superAdmin => _superAdmin ?? false;
  bool hasSuperAdmin() => _superAdmin != null;

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
    _proprietario = snapshotData['proprietario'] as bool?;
    _operador = snapshotData['operador'] as bool?;
    _padrao = snapshotData['padrao'] as bool?;
    _representante = snapshotData['representante'] as bool?;
    _mecanico = snapshotData['mecanico'] as bool?;
    _assinante = snapshotData['assinante'] as bool?;
    _indicacao = snapshotData['indicacao'] as bool?;
    _cashback = snapshotData['cashback'] as bool?;
    _codvalepontos = snapshotData['codvalepontos'] as String?;
    _pontosvale = castToType<double>(snapshotData['pontosvale']);
    _dtInclusaoVale = snapshotData['dtInclusaoVale'] as String?;
    _aceiteTermo = snapshotData['aceiteTermo'] as bool?;
    _valorVale = castToType<double>(snapshotData['valorVale']);
    _motivoVale = snapshotData['motivoVale'] as String?;
    _funcionario = snapshotData['funcionario'] as bool?;
    _superAdmin = snapshotData['SuperAdmin'] as bool?;
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
  bool? proprietario,
  bool? operador,
  bool? padrao,
  bool? representante,
  bool? mecanico,
  bool? assinante,
  bool? indicacao,
  bool? cashback,
  String? codvalepontos,
  double? pontosvale,
  String? dtInclusaoVale,
  bool? aceiteTermo,
  double? valorVale,
  String? motivoVale,
  bool? funcionario,
  bool? superAdmin,
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
      'proprietario': proprietario,
      'operador': operador,
      'padrao': padrao,
      'representante': representante,
      'mecanico': mecanico,
      'assinante': assinante,
      'indicacao': indicacao,
      'cashback': cashback,
      'codvalepontos': codvalepontos,
      'pontosvale': pontosvale,
      'dtInclusaoVale': dtInclusaoVale,
      'aceiteTermo': aceiteTermo,
      'valorVale': valorVale,
      'motivoVale': motivoVale,
      'funcionario': funcionario,
      'SuperAdmin': superAdmin,
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
        e1?.proprietario == e2?.proprietario &&
        e1?.operador == e2?.operador &&
        e1?.padrao == e2?.padrao &&
        e1?.representante == e2?.representante &&
        e1?.mecanico == e2?.mecanico &&
        e1?.assinante == e2?.assinante &&
        e1?.indicacao == e2?.indicacao &&
        e1?.cashback == e2?.cashback &&
        e1?.codvalepontos == e2?.codvalepontos &&
        e1?.pontosvale == e2?.pontosvale &&
        e1?.dtInclusaoVale == e2?.dtInclusaoVale &&
        e1?.aceiteTermo == e2?.aceiteTermo &&
        e1?.valorVale == e2?.valorVale &&
        e1?.motivoVale == e2?.motivoVale &&
        e1?.funcionario == e2?.funcionario &&
        e1?.superAdmin == e2?.superAdmin;
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
        e?.proprietario,
        e?.operador,
        e?.padrao,
        e?.representante,
        e?.mecanico,
        e?.assinante,
        e?.indicacao,
        e?.cashback,
        e?.codvalepontos,
        e?.pontosvale,
        e?.dtInclusaoVale,
        e?.aceiteTermo,
        e?.valorVale,
        e?.motivoVale,
        e?.funcionario,
        e?.superAdmin
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
