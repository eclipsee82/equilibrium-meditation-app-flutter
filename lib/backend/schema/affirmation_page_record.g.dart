// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affirmation_page_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AffirmationPageRecord> _$affirmationPageRecordSerializer =
    new _$AffirmationPageRecordSerializer();

class _$AffirmationPageRecordSerializer
    implements StructuredSerializer<AffirmationPageRecord> {
  @override
  final Iterable<Type> types = const [
    AffirmationPageRecord,
    _$AffirmationPageRecord
  ];
  @override
  final String wireName = 'AffirmationPageRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AffirmationPageRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.img1;
    if (value != null) {
      result
        ..add('img1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name1;
    if (value != null) {
      result
        ..add('name1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AffirmationPageRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AffirmationPageRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'img1':
          result.img1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name1':
          result.name1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AffirmationPageRecord extends AffirmationPageRecord {
  @override
  final String img1;
  @override
  final String name1;
  @override
  final DocumentReference<Object> reference;

  factory _$AffirmationPageRecord(
          [void Function(AffirmationPageRecordBuilder) updates]) =>
      (new AffirmationPageRecordBuilder()..update(updates)).build();

  _$AffirmationPageRecord._({this.img1, this.name1, this.reference})
      : super._();

  @override
  AffirmationPageRecord rebuild(
          void Function(AffirmationPageRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AffirmationPageRecordBuilder toBuilder() =>
      new AffirmationPageRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AffirmationPageRecord &&
        img1 == other.img1 &&
        name1 == other.name1 &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, img1.hashCode), name1.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AffirmationPageRecord')
          ..add('img1', img1)
          ..add('name1', name1)
          ..add('reference', reference))
        .toString();
  }
}

class AffirmationPageRecordBuilder
    implements Builder<AffirmationPageRecord, AffirmationPageRecordBuilder> {
  _$AffirmationPageRecord _$v;

  String _img1;
  String get img1 => _$this._img1;
  set img1(String img1) => _$this._img1 = img1;

  String _name1;
  String get name1 => _$this._name1;
  set name1(String name1) => _$this._name1 = name1;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AffirmationPageRecordBuilder() {
    AffirmationPageRecord._initializeBuilder(this);
  }

  AffirmationPageRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _img1 = $v.img1;
      _name1 = $v.name1;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AffirmationPageRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AffirmationPageRecord;
  }

  @override
  void update(void Function(AffirmationPageRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AffirmationPageRecord build() {
    final _$result = _$v ??
        new _$AffirmationPageRecord._(
            img1: img1, name1: name1, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
