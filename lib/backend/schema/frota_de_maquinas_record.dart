import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FrotaDeMaquinasRecord extends FirestoreRecord {
  FrotaDeMaquinasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NumerodoChassi" field.
  String? _numerodoChassi;
  String get numerodoChassi => _numerodoChassi ?? '';
  bool hasNumerodoChassi() => _numerodoChassi != null;

  // "Proprietario" field.
  String? _proprietario;
  String get proprietario => _proprietario ?? '';
  bool hasProprietario() => _proprietario != null;

  // "Marca" field.
  DocumentReference? _marca;
  DocumentReference? get marca => _marca;
  bool hasMarca() => _marca != null;

  // "Familia" field.
  DocumentReference? _familia;
  DocumentReference? get familia => _familia;
  bool hasFamilia() => _familia != null;

  // "Modelo" field.
  DocumentReference? _modelo;
  DocumentReference? get modelo => _modelo;
  bool hasModelo() => _modelo != null;

  // "Ano" field.
  DocumentReference? _ano;
  DocumentReference? get ano => _ano;
  bool hasAno() => _ano != null;

  void _initializeFields() {
    _numerodoChassi = snapshotData['NumerodoChassi'] as String?;
    _proprietario = snapshotData['Proprietario'] as String?;
    _marca = snapshotData['Marca'] as DocumentReference?;
    _familia = snapshotData['Familia'] as DocumentReference?;
    _modelo = snapshotData['Modelo'] as DocumentReference?;
    _ano = snapshotData['Ano'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Frota_de_Maquinas');

  static Stream<FrotaDeMaquinasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FrotaDeMaquinasRecord.fromSnapshot(s));

  static Future<FrotaDeMaquinasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FrotaDeMaquinasRecord.fromSnapshot(s));

  static FrotaDeMaquinasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FrotaDeMaquinasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FrotaDeMaquinasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FrotaDeMaquinasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FrotaDeMaquinasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FrotaDeMaquinasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFrotaDeMaquinasRecordData({
  String? numerodoChassi,
  String? proprietario,
  DocumentReference? marca,
  DocumentReference? familia,
  DocumentReference? modelo,
  DocumentReference? ano,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NumerodoChassi': numerodoChassi,
      'Proprietario': proprietario,
      'Marca': marca,
      'Familia': familia,
      'Modelo': modelo,
      'Ano': ano,
    }.withoutNulls,
  );

  return firestoreData;
}

class FrotaDeMaquinasRecordDocumentEquality
    implements Equality<FrotaDeMaquinasRecord> {
  const FrotaDeMaquinasRecordDocumentEquality();

  @override
  bool equals(FrotaDeMaquinasRecord? e1, FrotaDeMaquinasRecord? e2) {
    return e1?.numerodoChassi == e2?.numerodoChassi &&
        e1?.proprietario == e2?.proprietario &&
        e1?.marca == e2?.marca &&
        e1?.familia == e2?.familia &&
        e1?.modelo == e2?.modelo &&
        e1?.ano == e2?.ano;
  }

  @override
  int hash(FrotaDeMaquinasRecord? e) => const ListEquality().hash([
        e?.numerodoChassi,
        e?.proprietario,
        e?.marca,
        e?.familia,
        e?.modelo,
        e?.ano
      ]);

  @override
  bool isValidKey(Object? o) => o is FrotaDeMaquinasRecord;
}
