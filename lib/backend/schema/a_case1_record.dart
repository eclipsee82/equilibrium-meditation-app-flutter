import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'a_case1_record.g.dart';

abstract class ACase1Record
    implements Built<ACase1Record, ACase1RecordBuilder> {
  static Serializer<ACase1Record> get serializer => _$aCase1RecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ACase1RecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aCase1');

  static Stream<ACase1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ACase1Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ACase1Record._();
  factory ACase1Record([void Function(ACase1RecordBuilder) updates]) =
      _$ACase1Record;

  static ACase1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createACase1RecordData({
  String name,
}) =>
    serializers.toFirestore(
        ACase1Record.serializer, ACase1Record((a) => a..name = name));
