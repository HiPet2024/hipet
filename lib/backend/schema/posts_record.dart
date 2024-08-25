import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomedeusuario" field.
  String? _nomedeusuario;
  String get nomedeusuario => _nomedeusuario ?? '';
  bool hasNomedeusuario() => _nomedeusuario != null;

  // "fotos" field.
  List<String>? _fotos;
  List<String> get fotos => _fotos ?? const [];
  bool hasFotos() => _fotos != null;

  // "tempo" field.
  DateTime? _tempo;
  DateTime? get tempo => _tempo;
  bool hasTempo() => _tempo != null;

  // "code_ref" field.
  String? _codeRef;
  String get codeRef => _codeRef ?? '';
  bool hasCodeRef() => _codeRef != null;

  // "likes_users" field.
  List<DocumentReference>? _likesUsers;
  List<DocumentReference> get likesUsers => _likesUsers ?? const [];
  bool hasLikesUsers() => _likesUsers != null;

  // "likes_numero" field.
  int? _likesNumero;
  int get likesNumero => _likesNumero ?? 0;
  bool hasLikesNumero() => _likesNumero != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "bookmark_user" field.
  List<DocumentReference>? _bookmarkUser;
  List<DocumentReference> get bookmarkUser => _bookmarkUser ?? const [];
  bool hasBookmarkUser() => _bookmarkUser != null;

  void _initializeFields() {
    _nomedeusuario = snapshotData['nomedeusuario'] as String?;
    _fotos = getDataList(snapshotData['fotos']);
    _tempo = snapshotData['tempo'] as DateTime?;
    _codeRef = snapshotData['code_ref'] as String?;
    _likesUsers = getDataList(snapshotData['likes_users']);
    _likesNumero = castToType<int>(snapshotData['likes_numero']);
    _userId = snapshotData['userId'] as String?;
    _description = snapshotData['description'] as String?;
    _bookmarkUser = getDataList(snapshotData['bookmark_user']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? nomedeusuario,
  DateTime? tempo,
  String? codeRef,
  int? likesNumero,
  String? userId,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedeusuario': nomedeusuario,
      'tempo': tempo,
      'code_ref': codeRef,
      'likes_numero': likesNumero,
      'userId': userId,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomedeusuario == e2?.nomedeusuario &&
        listEquality.equals(e1?.fotos, e2?.fotos) &&
        e1?.tempo == e2?.tempo &&
        e1?.codeRef == e2?.codeRef &&
        listEquality.equals(e1?.likesUsers, e2?.likesUsers) &&
        e1?.likesNumero == e2?.likesNumero &&
        e1?.userId == e2?.userId &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.bookmarkUser, e2?.bookmarkUser);
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.nomedeusuario,
        e?.fotos,
        e?.tempo,
        e?.codeRef,
        e?.likesUsers,
        e?.likesNumero,
        e?.userId,
        e?.description,
        e?.bookmarkUser
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
