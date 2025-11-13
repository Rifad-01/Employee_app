// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeListModel {

 int get page;@JsonKey(name: "per_page") int get perPage; int get total;@JsonKey(name: "total_pages") int get totalPages; List<EmployeeModel> get data;
/// Create a copy of EmployeeListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeListModelCopyWith<EmployeeListModel> get copyWith => _$EmployeeListModelCopyWithImpl<EmployeeListModel>(this as EmployeeListModel, _$identity);

  /// Serializes this EmployeeListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeListModel&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,total,totalPages,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EmployeeListModel(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
}


}

/// @nodoc
abstract mixin class $EmployeeListModelCopyWith<$Res>  {
  factory $EmployeeListModelCopyWith(EmployeeListModel value, $Res Function(EmployeeListModel) _then) = _$EmployeeListModelCopyWithImpl;
@useResult
$Res call({
 int page,@JsonKey(name: "per_page") int perPage, int total,@JsonKey(name: "total_pages") int totalPages, List<EmployeeModel> data
});




}
/// @nodoc
class _$EmployeeListModelCopyWithImpl<$Res>
    implements $EmployeeListModelCopyWith<$Res> {
  _$EmployeeListModelCopyWithImpl(this._self, this._then);

  final EmployeeListModel _self;
  final $Res Function(EmployeeListModel) _then;

/// Create a copy of EmployeeListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? perPage = null,Object? total = null,Object? totalPages = null,Object? data = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EmployeeModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeListModel].
extension EmployeeListModelPatterns on EmployeeListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeListModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeListModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page, @JsonKey(name: "per_page")  int perPage,  int total, @JsonKey(name: "total_pages")  int totalPages,  List<EmployeeModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeListModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page, @JsonKey(name: "per_page")  int perPage,  int total, @JsonKey(name: "total_pages")  int totalPages,  List<EmployeeModel> data)  $default,) {final _that = this;
switch (_that) {
case _EmployeeListModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page, @JsonKey(name: "per_page")  int perPage,  int total, @JsonKey(name: "total_pages")  int totalPages,  List<EmployeeModel> data)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeListModel() when $default != null:
return $default(_that.page,_that.perPage,_that.total,_that.totalPages,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeListModel implements EmployeeListModel {
  const _EmployeeListModel({required this.page, @JsonKey(name: "per_page") required this.perPage, required this.total, @JsonKey(name: "total_pages") required this.totalPages, required final  List<EmployeeModel> data}): _data = data;
  factory _EmployeeListModel.fromJson(Map<String, dynamic> json) => _$EmployeeListModelFromJson(json);

@override final  int page;
@override@JsonKey(name: "per_page") final  int perPage;
@override final  int total;
@override@JsonKey(name: "total_pages") final  int totalPages;
 final  List<EmployeeModel> _data;
@override List<EmployeeModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of EmployeeListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeListModelCopyWith<_EmployeeListModel> get copyWith => __$EmployeeListModelCopyWithImpl<_EmployeeListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeListModel&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,total,totalPages,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'EmployeeListModel(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
}


}

/// @nodoc
abstract mixin class _$EmployeeListModelCopyWith<$Res> implements $EmployeeListModelCopyWith<$Res> {
  factory _$EmployeeListModelCopyWith(_EmployeeListModel value, $Res Function(_EmployeeListModel) _then) = __$EmployeeListModelCopyWithImpl;
@override @useResult
$Res call({
 int page,@JsonKey(name: "per_page") int perPage, int total,@JsonKey(name: "total_pages") int totalPages, List<EmployeeModel> data
});




}
/// @nodoc
class __$EmployeeListModelCopyWithImpl<$Res>
    implements _$EmployeeListModelCopyWith<$Res> {
  __$EmployeeListModelCopyWithImpl(this._self, this._then);

  final _EmployeeListModel _self;
  final $Res Function(_EmployeeListModel) _then;

/// Create a copy of EmployeeListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,Object? total = null,Object? totalPages = null,Object? data = null,}) {
  return _then(_EmployeeListModel(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EmployeeModel>,
  ));
}


}

// dart format on
