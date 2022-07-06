// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_page_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeditationPageRecord> _$meditationPageRecordSerializer =
    new _$MeditationPageRecordSerializer();

class _$MeditationPageRecordSerializer
    implements StructuredSerializer<MeditationPageRecord> {
  @override
  final Iterable<Type> types = const [
    MeditationPageRecord,
    _$MeditationPageRecord
  ];
  @override
  final String wireName = 'MeditationPageRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MeditationPageRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img2;
    if (value != null) {
      result
        ..add('img2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name2;
    if (value != null) {
      result
        ..add('name2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img3;
    if (value != null) {
      result
        ..add('img3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name3;
    if (value != null) {
      result
        ..add('name3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img4;
    if (value != null) {
      result
        ..add('img4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name4;
    if (value != null) {
      result
        ..add('name4')
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
  MeditationPageRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeditationPageRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img2':
          result.img2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name2':
          result.name2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img3':
          result.img3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name3':
          result.name3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img4':
          result.img4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name4':
          result.name4 = serializers.deserialize(value,
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

class _$MeditationPageRecord extends MeditationPageRecord {
  @override
  final String img;
  @override
  final String name;
  @override
  final String img2;
  @override
  final String name2;
  @override
  final String img3;
  @override
  final String name3;
  @override
  final String img4;
  @override
  final String name4;
  @override
  final DocumentReference<Object> reference;

  factory _$MeditationPageRecord(
          [void Function(MeditationPageRecordBuilder) updates]) =>
      (new MeditationPageRecordBuilder()..update(updates)).build();

  _$MeditationPageRecord._(
      {this.img,
      this.name,
      this.img2,
      this.name2,
      this.img3,
      this.name3,
      this.img4,
      this.name4,
      this.reference})
      : super._();

  @override
  MeditationPageRecord rebuild(
          void Function(MeditationPageRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeditationPageRecordBuilder toBuilder() =>
      new MeditationPageRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeditationPageRecord &&
        img == other.img &&
        name == other.name &&
        img2 == other.img2 &&
        name2 == other.name2 &&
        img3 == other.img3 &&
        name3 == other.name3 &&
        img4 == other.img4 &&
        name4 == other.name4 &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, img.hashCode), name.hashCode),
                                img2.hashCode),
                            name2.hashCode),
                        img3.hashCode),
                    name3.hashCode),
                img4.hashCode),
            name4.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MeditationPageRecord')
          ..add('img', img)
          ..add('name', name)
          ..add('img2', img2)
          ..add('name2', name2)
          ..add('img3', img3)
          ..add('name3', name3)
          ..add('img4', img4)
          ..add('name4', name4)
          ..add('reference', reference))
        .toString();
  }
}

class MeditationPageRecordBuilder
    implements Builder<MeditationPageRecord, MeditationPageRecordBuilder> {
  _$MeditationPageRecord _$v;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _img2;
  String get img2 => _$this._img2;
  set img2(String img2) => _$this._img2 = img2;

  String _name2;
  String get name2 => _$this._name2;
  set name2(String name2) => _$this._name2 = name2;

  String _img3;
  String get img3 => _$this._img3;
  set img3(String img3) => _$this._img3 = img3;

  String _name3;
  String get name3 => _$this._name3;
  set name3(String name3) => _$this._name3 = name3;

  String _img4;
  String get img4 => _$this._img4;
  set img4(String img4) => _$this._img4 = img4;

  String _name4;
  String get name4 => _$this._name4;
  set name4(String name4) => _$this._name4 = name4;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MeditationPageRecordBuilder() {
    MeditationPageRecord._initializeBuilder(this);
  }

  MeditationPageRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _img = $v.img;
      _name = $v.name;
      _img2 = $v.img2;
      _name2 = $v.name2;
      _img3 = $v.img3;
      _name3 = $v.name3;
      _img4 = $v.img4;
      _name4 = $v.name4;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeditationPageRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeditationPageRecord;
  }

  @override
  void update(void Function(MeditationPageRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MeditationPageRecord build() {
    final _$result = _$v ??
        new _$MeditationPageRecord._(
            img: img,
            name: name,
            img2: img2,
            name2: name2,
            img3: img3,
            name3: name3,
            img4: img4,
            name4: name4,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
