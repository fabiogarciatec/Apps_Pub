import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoricoHorimetrosRecord extends FirestoreRecord {
  HistoricoHorimetrosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Chassi" field.
  DocumentReference? _chassi;
  DocumentReference? get chassi => _chassi;
  bool hasChassi() => _chassi != null;

  // "Data_Inclusao" field.
  DateTime? _dataInclusao;
  DateTime? get dataInclusao => _dataInclusao;
  bool hasDataInclusao() => _dataInclusao != null;

  // "incluido_Por" field.
  DocumentReference? _incluidoPor;
  DocumentReference? get incluidoPor => _incluidoPor;
  bool hasIncluidoPor() => _incluidoPor != null;

  // "horimetro" field.
  int? _horimetro;
  int get horimetro => _horimetro ?? 0;
  bool hasHorimetro() => _horimetro != null;

  void _initializeFields() {
    _chassi = snapshotData['Chassi'] as DocumentReference?;
    _dataInclusao = snapshotData['Data_Inclusao'] as DateTime?;
    _incluidoPor = snapshotData['incluido_Por'] as DocumentReference?;
    _horimetro = castToType<int>(snapshotData['horimetro']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Historico_Horimetros');

  static Stream<HistoricoHorimetrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoricoHorimetrosRecord.fromSnapshot(s));

  static Future<HistoricoHorimetrosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistoricoHorimetrosRecord.fromSnapshot(s));

  static HistoricoHorimetrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoricoHorimetrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoricoHorimetrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoricoHorimetrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoricoHorimetrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoricoHorimetrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoricoHorimetrosRecordData({
  DocumentReference? chassi,
  DateTime? dataInclusao,
  DocumentReference? incluidoPor,
  int? horimetro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Chassi': chassi,
      'Data_Inclusao': dataInclusao,
      'incluido_Por': incluidoPor,
      'horimetro': horimetro,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoricoHorimetrosRecordDocumentEquality
    implements Equality<HistoricoHorimetrosRecord> {
  const HistoricoHorimetrosRecordDocumentEquality();

  @override
  bool equals(HistoricoHorimetrosRecord? e1, HistoricoHorimetrosRecord? e2) {
    return e1?.chassi == e2?.chassi &&
        e1?.dataInclusao == e2?.dataInclusao &&
        e1?.incluidoPor == e2?.incluidoPor &&
        e1?.horimetro == e2?.horimetro;
  }

  @override
  int hash(HistoricoHorimetrosRecord? e) => const ListEquality()
      .hash([e?.chassi, e?.dataInclusao, e?.incluidoPor, e?.horimetro]);

  @override
  bool isValidKey(Object? o) => o is HistoricoHorimetrosRecord;
}
