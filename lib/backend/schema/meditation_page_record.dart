import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'meditation_page_record.g.dart';

abstract class MeditationPageRecord
    implements Built<MeditationPageRecord, MeditationPageRecordBuilder> {
  static Serializer<MeditationPageRecord> get serializer =>
      _$meditationPageRecordSerializer;

  @nullable
  String get img;

  @nullable
  String get name;

  @nullable
  String get img2;

  @nullable
  String get name2;

  @nullable
  String get img3;

  @nullable
  String get name3;

  @nullable
  String get img4;

  @nullable
  String get name4;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MeditationPageRecordBuilder builder) => builder
    ..img = ''
    ..name = ''
    ..img2 = ''
    ..name2 = ''
    ..img3 = ''
    ..name3 = ''
    ..img4 = ''
    ..name4 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meditation_page');

  static Stream<MeditationPageRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MeditationPageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MeditationPageRecord._();
  factory MeditationPageRecord(
          [void Function(MeditationPageRecordBuilder) updates]) =
      _$MeditationPageRecord;

  static MeditationPageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMeditationPageRecordData({
  String img,
  String name,
  String img2,
  String name2,
  String img3,
  String name3,
  String img4,
  String name4,
}) =>
    serializers.toFirestore(
        MeditationPageRecord.serializer,
        MeditationPageRecord((m) => m
          ..img = img
          ..name = name
          ..img2 = img2
          ..name2 = name2
          ..img3 = img3
          ..name3 = name3
          ..img4 = img4
          ..name4 = name4));
