import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pn" field.
  String? _pn;
  String get pn => _pn ?? '';
  bool hasPn() => _pn != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "orig" field.
  int? _orig;
  int get orig => _orig ?? 0;
  bool hasOrig() => _orig != null;

  // "clfiscal" field.
  int? _clfiscal;
  int get clfiscal => _clfiscal ?? 0;
  bool hasClfiscal() => _clfiscal != null;

  // "peso" field.
  int? _peso;
  int get peso => _peso ?? 0;
  bool hasPeso() => _peso != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "mono" field.
  String? _mono;
  String get mono => _mono ?? '';
  bool hasMono() => _mono != null;

  // "unmed" field.
  String? _unmed;
  String get unmed => _unmed ?? '';
  bool hasUnmed() => _unmed != null;

  // "imagem" field.
  List<String>? _imagem;
  List<String> get imagem => _imagem ?? const [];
  bool hasImagem() => _imagem != null;

  // "marca" field.
  List<DocumentReference>? _marca;
  List<DocumentReference> get marca => _marca ?? const [];
  bool hasMarca() => _marca != null;

  void _initializeFields() {
    _pn = snapshotData['pn'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _orig = castToType<int>(snapshotData['orig']);
    _clfiscal = castToType<int>(snapshotData['clfiscal']);
    _peso = castToType<int>(snapshotData['peso']);
    _valor = castToType<double>(snapshotData['valor']);
    _mono = snapshotData['mono'] as String?;
    _unmed = snapshotData['unmed'] as String?;
    _imagem = getDataList(snapshotData['imagem']);
    _marca = getDataList(snapshotData['marca']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? pn,
  String? descricao,
  int? orig,
  int? clfiscal,
  int? peso,
  double? valor,
  String? mono,
  String? unmed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pn': pn,
      'descricao': descricao,
      'orig': orig,
      'clfiscal': clfiscal,
      'peso': peso,
      'valor': valor,
      'mono': mono,
      'unmed': unmed,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.pn == e2?.pn &&
        e1?.descricao == e2?.descricao &&
        e1?.orig == e2?.orig &&
        e1?.clfiscal == e2?.clfiscal &&
        e1?.peso == e2?.peso &&
        e1?.valor == e2?.valor &&
        e1?.mono == e2?.mono &&
        e1?.unmed == e2?.unmed &&
        listEquality.equals(e1?.imagem, e2?.imagem) &&
        listEquality.equals(e1?.marca, e2?.marca);
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality().hash([
        e?.pn,
        e?.descricao,
        e?.orig,
        e?.clfiscal,
        e?.peso,
        e?.valor,
        e?.mono,
        e?.unmed,
        e?.imagem,
        e?.marca
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
