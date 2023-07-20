import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarcaRecord extends FirestoreRecord {
  MarcaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  void _initializeFields() {
    _marca = snapshotData['marca'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Marca');

  static Stream<MarcaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarcaRecord.fromSnapshot(s));

  static Future<MarcaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarcaRecord.fromSnapshot(s));

  static MarcaRecord fromSnapshot(DocumentSnapshot snapshot) => MarcaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarcaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarcaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarcaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarcaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarcaRecordData({
  String? marca,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'marca': marca,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarcaRecordDocumentEquality implements Equality<MarcaRecord> {
  const MarcaRecordDocumentEquality();

  @override
  bool equals(MarcaRecord? e1, MarcaRecord? e2) {
    return e1?.marca == e2?.marca;
  }

  @override
  int hash(MarcaRecord? e) => const ListEquality().hash([e?.marca]);

  @override
  bool isValidKey(Object? o) => o is MarcaRecord;
}
