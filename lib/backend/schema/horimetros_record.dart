import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorimetrosRecord extends FirestoreRecord {
  HorimetrosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "enviado_em" field.
  DateTime? _enviadoEm;
  DateTime? get enviadoEm => _enviadoEm;
  bool hasEnviadoEm() => _enviadoEm != null;

  // "enviado_por" field.
  DocumentReference? _enviadoPor;
  DocumentReference? get enviadoPor => _enviadoPor;
  bool hasEnviadoPor() => _enviadoPor != null;

  // "foto_chassi" field.
  String? _fotoChassi;
  String get fotoChassi => _fotoChassi ?? '';
  bool hasFotoChassi() => _fotoChassi != null;

  // "foto_horimetro" field.
  String? _fotoHorimetro;
  String get fotoHorimetro => _fotoHorimetro ?? '';
  bool hasFotoHorimetro() => _fotoHorimetro != null;

  // "Inf_horimetro" field.
  int? _infHorimetro;
  int get infHorimetro => _infHorimetro ?? 0;
  bool hasInfHorimetro() => _infHorimetro != null;

  // "Inf_chassi" field.
  String? _infChassi;
  String get infChassi => _infChassi ?? '';
  bool hasInfChassi() => _infChassi != null;

  // "Proprietario" field.
  String? _proprietario;
  String get proprietario => _proprietario ?? '';
  bool hasProprietario() => _proprietario != null;

  // "Inf_maquina" field.
  DocumentReference? _infMaquina;
  DocumentReference? get infMaquina => _infMaquina;
  bool hasInfMaquina() => _infMaquina != null;

  void _initializeFields() {
    _enviadoEm = snapshotData['enviado_em'] as DateTime?;
    _enviadoPor = snapshotData['enviado_por'] as DocumentReference?;
    _fotoChassi = snapshotData['foto_chassi'] as String?;
    _fotoHorimetro = snapshotData['foto_horimetro'] as String?;
    _infHorimetro = castToType<int>(snapshotData['Inf_horimetro']);
    _infChassi = snapshotData['Inf_chassi'] as String?;
    _proprietario = snapshotData['Proprietario'] as String?;
    _infMaquina = snapshotData['Inf_maquina'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Horimetros');

  static Stream<HorimetrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HorimetrosRecord.fromSnapshot(s));

  static Future<HorimetrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HorimetrosRecord.fromSnapshot(s));

  static HorimetrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HorimetrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HorimetrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HorimetrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HorimetrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HorimetrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHorimetrosRecordData({
  DateTime? enviadoEm,
  DocumentReference? enviadoPor,
  String? fotoChassi,
  String? fotoHorimetro,
  int? infHorimetro,
  String? infChassi,
  String? proprietario,
  DocumentReference? infMaquina,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'enviado_em': enviadoEm,
      'enviado_por': enviadoPor,
      'foto_chassi': fotoChassi,
      'foto_horimetro': fotoHorimetro,
      'Inf_horimetro': infHorimetro,
      'Inf_chassi': infChassi,
      'Proprietario': proprietario,
      'Inf_maquina': infMaquina,
    }.withoutNulls,
  );

  return firestoreData;
}

class HorimetrosRecordDocumentEquality implements Equality<HorimetrosRecord> {
  const HorimetrosRecordDocumentEquality();

  @override
  bool equals(HorimetrosRecord? e1, HorimetrosRecord? e2) {
    return e1?.enviadoEm == e2?.enviadoEm &&
        e1?.enviadoPor == e2?.enviadoPor &&
        e1?.fotoChassi == e2?.fotoChassi &&
        e1?.fotoHorimetro == e2?.fotoHorimetro &&
        e1?.infHorimetro == e2?.infHorimetro &&
        e1?.infChassi == e2?.infChassi &&
        e1?.proprietario == e2?.proprietario &&
        e1?.infMaquina == e2?.infMaquina;
  }

  @override
  int hash(HorimetrosRecord? e) => const ListEquality().hash([
        e?.enviadoEm,
        e?.enviadoPor,
        e?.fotoChassi,
        e?.fotoHorimetro,
        e?.infHorimetro,
        e?.infChassi,
        e?.proprietario,
        e?.infMaquina
      ]);

  @override
  bool isValidKey(Object? o) => o is HorimetrosRecord;
}
