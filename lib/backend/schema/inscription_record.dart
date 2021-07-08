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
  @BuiltValueField(wireName: 'Nom')
  String get nom;

  @nullable
  String get prenom;

  @nullable
  @BuiltValueField(wireName: 'Taille')
  double get taille;

  @nullable
  @BuiltValueField(wireName: 'Poids')
  int get poids;

  @nullable
  @BuiltValueField(wireName: 'Numero')
  int get numero;

  @nullable
  @BuiltValueField(wireName: 'Password')
  String get password;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(InscriptionRecordBuilder builder) => builder
    ..nom = ''
    ..prenom = ''
    ..taille = 0.0
    ..poids = 0
    ..numero = 0
    ..password = '';

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
  String nom,
  String prenom,
  double taille,
  int poids,
  int numero,
  String password,
}) =>
    serializers.toFirestore(
        InscriptionRecord.serializer,
        InscriptionRecord((i) => i
          ..nom = nom
          ..prenom = prenom
          ..taille = taille
          ..poids = poids
          ..numero = numero
          ..password = password));
