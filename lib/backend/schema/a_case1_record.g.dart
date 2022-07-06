// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_case1_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ACase1Record> _$aCase1RecordSerializer =
    new _$ACase1RecordSerializer();

class _$ACase1RecordSerializer implements StructuredSerializer<ACase1Record> {
  @override
  final Iterable<Type> types = const [ACase1Record, _$ACase1Record];
  @override
  final String wireName = 'ACase1Record';

  @override
  Iterable<Object> serialize(Serializers serializers, ACase1Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
  ACase1Record deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ACase1RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
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

class _$ACase1Record extends ACase1Record {
  @override
  final String name;
  @override
  final DocumentReference<Object> reference;

  factory _$ACase1Record([void Function(ACase1RecordBuilder) updates]) =>
      (new ACase1RecordBuilder()..update(updates)).build();

  _$ACase1Record._({this.name, this.reference}) : super._();

  @override
  ACase1Record rebuild(void Function(ACase1RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ACase1RecordBuilder toBuilder() => new ACase1RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ACase1Record &&
        name == other.name &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ACase1Record')
          ..add('name', name)
          ..add('reference', reference))
        .toString();
  }
}

class ACase1RecordBuilder
    implements Builder<ACase1Record, ACase1RecordBuilder> {
  _$ACase1Record _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ACase1RecordBuilder() {
    ACase1Record._initializeBuilder(this);
  }

  ACase1RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ACase1Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ACase1Record;
  }

  @override
  void update(void Function(ACase1RecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ACase1Record build() {
    final _$result =
        _$v ?? new _$ACase1Record._(name: name, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
