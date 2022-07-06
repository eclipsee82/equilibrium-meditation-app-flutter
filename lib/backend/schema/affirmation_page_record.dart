import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'affirmation_page_record.g.dart';

abstract class AffirmationPageRecord
    implements Built<AffirmationPageRecord, AffirmationPageRecordBuilder> {
  static Serializer<AffirmationPageRecord> get serializer =>
      _$affirmationPageRecordSerializer;

  @nullable
  String get img1;

  @nullable
  String get name1;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AffirmationPageRecordBuilder builder) =>
      builder
        ..img1 = ''
        ..name1 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('affirmation_page');

  static Stream<AffirmationPageRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AffirmationPageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AffirmationPageRecord._();
  factory AffirmationPageRecord(
          [void Function(AffirmationPageRecordBuilder) updates]) =
      _$AffirmationPageRecord;

  static AffirmationPageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAffirmationPageRecordData({
  String img1,
  String name1,
}) =>
    serializers.toFirestore(
        AffirmationPageRecord.serializer,
        AffirmationPageRecord((a) => a
          ..img1 = img1
          ..name1 = name1));
