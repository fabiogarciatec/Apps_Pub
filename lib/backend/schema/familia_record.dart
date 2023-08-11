import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FamiliaRecord extends FirestoreRecord {
  FamiliaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "familia" field.
  String? _familia;
  String get familia => _familia ?? '';
  bool hasFamilia() => _familia != null;

  void _initializeFields() {
    _familia = snapshotData['familia'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Familia');

  static Stream<FamiliaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FamiliaRecord.fromSnapshot(s));

  static Future<FamiliaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FamiliaRecord.fromSnapshot(s));

  static FamiliaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FamiliaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FamiliaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FamiliaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FamiliaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FamiliaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFamiliaRecordData({
  String? familia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'familia': familia,
    }.withoutNulls,
  );

  return firestoreData;
}

class FamiliaRecordDocumentEquality implements Equality<FamiliaRecord> {
  const FamiliaRecordDocumentEquality();

  @override
  bool equals(FamiliaRecord? e1, FamiliaRecord? e2) {
    return e1?.familia == e2?.familia;
  }

  @override
  int hash(FamiliaRecord? e) => const ListEquality().hash([e?.familia]);

  @override
  bool isValidKey(Object? o) => o is FamiliaRecord;
}
