import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'inscription_record.g.dart';

abstract class InscriptionRecord
    implements Built<InscriptionRecord, InscriptionRecordBuilder> {
  static Serializer<InscriptionRecord> get serializer =>
      _$inscriptionRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(InscriptionRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inscription');

  static Stream<InscriptionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  InscriptionRecord._();
  factory InscriptionRecord([void Function(InscriptionRecordBuilder) updates]) =
      _$InscriptionRecord;

  static InscriptionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createInscriptionRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        InscriptionRecord.serializer,
        InscriptionRecord((i) => i
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
