import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PushNotificationRecord extends FirestoreRecord {
  PushNotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Texto" field.
  String? _texto;
  String get texto => _texto ?? '';
  bool hasTexto() => _texto != null;

  // "Postado" field.
  DateTime? _postado;
  DateTime? get postado => _postado;
  bool hasPostado() => _postado != null;

  // "Imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "Valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _texto = snapshotData['Texto'] as String?;
    _postado = snapshotData['Postado'] as DateTime?;
    _imagem = snapshotData['Imagem'] as String?;
    _valor = castToType<double>(snapshotData['Valor']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PushNotification');

  static Stream<PushNotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PushNotificationRecord.fromSnapshot(s));

  static Future<PushNotificationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PushNotificationRecord.fromSnapshot(s));

  static PushNotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PushNotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PushNotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PushNotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PushNotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PushNotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPushNotificationRecordData({
  String? titulo,
  String? texto,
  DateTime? postado,
  String? imagem,
  double? valor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Texto': texto,
      'Postado': postado,
      'Imagem': imagem,
      'Valor': valor,
    }.withoutNulls,
  );

  return firestoreData;
}

class PushNotificationRecordDocumentEquality
    implements Equality<PushNotificationRecord> {
  const PushNotificationRecordDocumentEquality();

  @override
  bool equals(PushNotificationRecord? e1, PushNotificationRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.texto == e2?.texto &&
        e1?.postado == e2?.postado &&
        e1?.imagem == e2?.imagem &&
        e1?.valor == e2?.valor;
  }

  @override
  int hash(PushNotificationRecord? e) => const ListEquality()
      .hash([e?.titulo, e?.texto, e?.postado, e?.imagem, e?.valor]);

  @override
  bool isValidKey(Object? o) => o is PushNotificationRecord;
}
