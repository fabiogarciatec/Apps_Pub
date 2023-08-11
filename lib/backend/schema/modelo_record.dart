import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModeloRecord extends FirestoreRecord {
  ModeloRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  void _initializeFields() {
    _modelo = snapshotData['modelo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Modelo');

  static Stream<ModeloRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModeloRecord.fromSnapshot(s));

  static Future<ModeloRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ModeloRecord.fromSnapshot(s));

  static ModeloRecord fromSnapshot(DocumentSnapshot snapshot) => ModeloRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModeloRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModeloRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModeloRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModeloRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createModeloRecordData({
  String? modelo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'modelo': modelo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModeloRecordDocumentEquality implements Equality<ModeloRecord> {
  const ModeloRecordDocumentEquality();

  @override
  bool equals(ModeloRecord? e1, ModeloRecord? e2) {
    return e1?.modelo == e2?.modelo;
  }

  @override
  int hash(ModeloRecord? e) => const ListEquality().hash([e?.modelo]);

  @override
  bool isValidKey(Object? o) => o is ModeloRecord;
}
