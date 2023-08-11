import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnoRecord extends FirestoreRecord {
  AnoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ano" field.
  int? _ano;
  int get ano => _ano ?? 0;
  bool hasAno() => _ano != null;

  void _initializeFields() {
    _ano = castToType<int>(snapshotData['ano']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ano');

  static Stream<AnoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnoRecord.fromSnapshot(s));

  static Future<AnoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnoRecord.fromSnapshot(s));

  static AnoRecord fromSnapshot(DocumentSnapshot snapshot) => AnoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnoRecordData({
  int? ano,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ano': ano,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnoRecordDocumentEquality implements Equality<AnoRecord> {
  const AnoRecordDocumentEquality();

  @override
  bool equals(AnoRecord? e1, AnoRecord? e2) {
    return e1?.ano == e2?.ano;
  }

  @override
  int hash(AnoRecord? e) => const ListEquality().hash([e?.ano]);

  @override
  bool isValidKey(Object? o) => o is AnoRecord;
}
