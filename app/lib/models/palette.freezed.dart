// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColorPalette _$ColorPaletteFromJson(Map<String, dynamic> json) {
  return _ColorPalette.fromJson(json);
}

/// @nodoc
class _$ColorPaletteTearOff {
  const _$ColorPaletteTearOff();

  _ColorPalette call({required String name, List<int> colors = const []}) {
    return _ColorPalette(
      name: name,
      colors: colors,
    );
  }

  ColorPalette fromJson(Map<String, Object?> json) {
    return ColorPalette.fromJson(json);
  }
}

/// @nodoc
const $ColorPalette = _$ColorPaletteTearOff();

/// @nodoc
mixin _$ColorPalette {
  String get name => throw _privateConstructorUsedError;
  List<int> get colors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorPaletteCopyWith<ColorPalette> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorPaletteCopyWith<$Res> {
  factory $ColorPaletteCopyWith(
          ColorPalette value, $Res Function(ColorPalette) then) =
      _$ColorPaletteCopyWithImpl<$Res>;
  $Res call({String name, List<int> colors});
}

/// @nodoc
class _$ColorPaletteCopyWithImpl<$Res> implements $ColorPaletteCopyWith<$Res> {
  _$ColorPaletteCopyWithImpl(this._value, this._then);

  final ColorPalette _value;
  // ignore: unused_field
  final $Res Function(ColorPalette) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? colors = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$ColorPaletteCopyWith<$Res>
    implements $ColorPaletteCopyWith<$Res> {
  factory _$ColorPaletteCopyWith(
          _ColorPalette value, $Res Function(_ColorPalette) then) =
      __$ColorPaletteCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<int> colors});
}

/// @nodoc
class __$ColorPaletteCopyWithImpl<$Res> extends _$ColorPaletteCopyWithImpl<$Res>
    implements _$ColorPaletteCopyWith<$Res> {
  __$ColorPaletteCopyWithImpl(
      _ColorPalette _value, $Res Function(_ColorPalette) _then)
      : super(_value, (v) => _then(v as _ColorPalette));

  @override
  _ColorPalette get _value => super._value as _ColorPalette;

  @override
  $Res call({
    Object? name = freezed,
    Object? colors = freezed,
  }) {
    return _then(_ColorPalette(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColorPalette implements _ColorPalette {
  const _$_ColorPalette({required this.name, this.colors = const []});

  factory _$_ColorPalette.fromJson(Map<String, dynamic> json) =>
      _$$_ColorPaletteFromJson(json);

  @override
  final String name;
  @JsonKey()
  @override
  final List<int> colors;

  @override
  String toString() {
    return 'ColorPalette(name: $name, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColorPalette &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.colors, colors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(colors));

  @JsonKey(ignore: true)
  @override
  _$ColorPaletteCopyWith<_ColorPalette> get copyWith =>
      __$ColorPaletteCopyWithImpl<_ColorPalette>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorPaletteToJson(this);
  }
}

abstract class _ColorPalette implements ColorPalette {
  const factory _ColorPalette({required String name, List<int> colors}) =
      _$_ColorPalette;

  factory _ColorPalette.fromJson(Map<String, dynamic> json) =
      _$_ColorPalette.fromJson;

  @override
  String get name;
  @override
  List<int> get colors;
  @override
  @JsonKey(ignore: true)
  _$ColorPaletteCopyWith<_ColorPalette> get copyWith =>
      throw _privateConstructorUsedError;
}