// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeeListEntity {

 int get page;@JsonKey(name: "per_page") int get perPage; int get total;@JsonKey(name: "total_pages") int get totalPages; List<EmployeeEntity> get data;
/// Create a copy of EmployeeListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeListEntityCopyWith<EmployeeListEntity> get copyWith => _$EmployeeListEntityCopyWithImpl<EmployeeListEntity>(this as EmployeeListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeListEntity&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,page,perPage,total,totalPages,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EmployeeListEntity(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
}


}

/// @nodoc
abstract mixin class $EmployeeListEntityCopyWith<$Res>  {
  factory $EmployeeListEntityCopyWith(EmployeeListEntity value, $Res Function(EmployeeListEntity) _then) = _$EmployeeListEntityCopyWithImpl;
@useResult
$Res call({
 int page,@JsonKey(name: "per_page") int perPage, int total,@JsonKey(name: "total_pages") int totalPages, List<EmployeeEntity> data
});




}
/// @nodoc
class _$EmployeeListEntityCopyWithImpl<$Res>
    implements $EmployeeListEntityCopyWith<$Res> {
  _$EmployeeListEntityCopyWithImpl(this._self, this._then);

  final EmployeeListEntity _self;
  final $Res Function(EmployeeListEntity) _then;

/// Create a copy of EmployeeListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? perPage = null,Object? total = null,Object? totalPages = null,Object? data = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EmployeeEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeListEntity].
extension EmployeeListEntityPatterns on EmployeeListEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeListEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeListEntity value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeListEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeListEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page, @JsonKey(name: "per_page")  int perPage,  int total, @JsonKey(name: "total_pages")  int totalPages,  List<EmployeeEntity> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeListEntity() when $default != null:
return $default(_that.page,_that.perPage,_that.total,_that.totalPages,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page, @JsonKey(name: "per_page")  int perPage,  int total, @JsonKey(name: "total_pages")  int totalPages,  List<EmployeeEntity> data)  $default,) {final _that = this;
switch (_that) {
case _EmployeeListEntity():
return $default(_that.page,_that.perPage,_that.total,_that.totalPages,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page, @JsonKey(name: "per_page")  int perPage,  int total, @JsonKey(name: "total_pages")  int totalPages,  List<EmployeeEntity> data)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeListEntity() when $default != null:
return $default(_that.page,_that.perPage,_that.total,_that.totalPages,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _EmployeeListEntity extends EmployeeListEntity {
  const _EmployeeListEntity({required this.page, @JsonKey(name: "per_page") required this.perPage, required this.total, @JsonKey(name: "total_pages") required this.totalPages, required final  List<EmployeeEntity> data}): _data = data,super._();
  

@override final  int page;
@override@JsonKey(name: "per_page") final  int perPage;
@override final  int total;
@override@JsonKey(name: "total_pages") final  int totalPages;
 final  List<EmployeeEntity> _data;
@override List<EmployeeEntity> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of EmployeeListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeListEntityCopyWith<_EmployeeListEntity> get copyWith => __$EmployeeListEntityCopyWithImpl<_EmployeeListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeListEntity&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,page,perPage,total,totalPages,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'EmployeeListEntity(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
}


}

/// @nodoc
abstract mixin class _$EmployeeListEntityCopyWith<$Res> implements $EmployeeListEntityCopyWith<$Res> {
  factory _$EmployeeListEntityCopyWith(_EmployeeListEntity value, $Res Function(_EmployeeListEntity) _then) = __$EmployeeListEntityCopyWithImpl;
@override @useResult
$Res call({
 int page,@JsonKey(name: "per_page") int perPage, int total,@JsonKey(name: "total_pages") int totalPages, List<EmployeeEntity> data
});




}
/// @nodoc
class __$EmployeeListEntityCopyWithImpl<$Res>
    implements _$EmployeeListEntityCopyWith<$Res> {
  __$EmployeeListEntityCopyWithImpl(this._self, this._then);

  final _EmployeeListEntity _self;
  final $Res Function(_EmployeeListEntity) _then;

/// Create a copy of EmployeeListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,Object? total = null,Object? totalPages = null,Object? data = null,}) {
  return _then(_EmployeeListEntity(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EmployeeEntity>,
  ));
}


}

// dart format on
