import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "postid" field.
  String? _postid;
  String get postid => _postid ?? '';
  bool hasPostid() => _postid != null;

  // "commentID" field.
  String? _commentID;
  String get commentID => _commentID ?? '';
  bool hasCommentID() => _commentID != null;

  // "Is_answer" field.
  bool? _isAnswer;
  bool get isAnswer => _isAnswer ?? false;
  bool hasIsAnswer() => _isAnswer != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "date_time" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "likes_users" field.
  List<DocumentReference>? _likesUsers;
  List<DocumentReference> get likesUsers => _likesUsers ?? const [];
  bool hasLikesUsers() => _likesUsers != null;

  // "answerRef" field.
  String? _answerRef;
  String get answerRef => _answerRef ?? '';
  bool hasAnswerRef() => _answerRef != null;

  void _initializeFields() {
    _postid = snapshotData['postid'] as String?;
    _commentID = snapshotData['commentID'] as String?;
    _isAnswer = snapshotData['Is_answer'] as bool?;
    _text = snapshotData['text'] as String?;
    _dateTime = snapshotData['date_time'] as DateTime?;
    _userid = snapshotData['userid'] as String?;
    _likes = castToType<int>(snapshotData['likes']);
    _likesUsers = getDataList(snapshotData['likes_users']);
    _answerRef = snapshotData['answerRef'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? postid,
  String? commentID,
  bool? isAnswer,
  String? text,
  DateTime? dateTime,
  String? userid,
  int? likes,
  String? answerRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postid': postid,
      'commentID': commentID,
      'Is_answer': isAnswer,
      'text': text,
      'date_time': dateTime,
      'userid': userid,
      'likes': likes,
      'answerRef': answerRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postid == e2?.postid &&
        e1?.commentID == e2?.commentID &&
        e1?.isAnswer == e2?.isAnswer &&
        e1?.text == e2?.text &&
        e1?.dateTime == e2?.dateTime &&
        e1?.userid == e2?.userid &&
        e1?.likes == e2?.likes &&
        listEquality.equals(e1?.likesUsers, e2?.likesUsers) &&
        e1?.answerRef == e2?.answerRef;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.postid,
        e?.commentID,
        e?.isAnswer,
        e?.text,
        e?.dateTime,
        e?.userid,
        e?.likes,
        e?.likesUsers,
        e?.answerRef
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
